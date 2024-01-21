package controller;

// ... your code ...


import bean.Comment;
import dao.CommentDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/comment")
public class CommentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CommentDAO dao = new CommentDAO();
        List<Comment> comments = dao.getAllComments();
        int count = comments.size();
        request.setAttribute("comments", comments);
        request.setAttribute("commentCount", count);
        request.getRequestDispatcher("thong-tin-don-hang.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String commentText = request.getParameter("commentText");

        Comment comment = new Comment();
        comment.setUsername(username);
        comment.setCommentText(commentText);

        CommentDAO dao = new CommentDAO();
        dao.addComment(comment);

        response.sendRedirect(request.getContextPath() + "/comment");
    }
}
