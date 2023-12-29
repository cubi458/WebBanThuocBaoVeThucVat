package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UploadController", value = "/upload")
@MultipartConfig(
        fileSizeThreshold = 1024*1024,// 1MB
        maxFileSize = 1024*1024*10, //10MB
        maxRequestSize = 1024*1024*100 //100MB

)
public class UploadController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part filePart =req.getPart("up");
        String fileName =filePart.getSubmittedFileName();
        String root= getServletContext().getRealPath("/images/");
        File check =new File(root);
        if(!(check.exists()))
            check.mkdirs();
        if(filePart != null){
            filePart.write(root+fileName);
        }
        resp.getWriter().print("The file uploaded successfuly.");
    }
}
