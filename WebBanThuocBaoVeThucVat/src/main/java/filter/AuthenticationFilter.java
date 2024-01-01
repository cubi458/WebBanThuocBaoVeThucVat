package filter;

import bean.User;
import dao.AccountDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "servletFilter" , urlPatterns = "/*")
public class AuthenticationFilter implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        HttpSession session = req.getSession();

        String url = req.getRequestURI();
        if(url.startsWith("/WebBanThuocBaoVeThucVat/admin")){
            if(session != null && session.getAttribute("uslogin") != null){
                User user = (User) session.getAttribute("uslogin");
                if(user.getRole() == 1){
                    chain.doFilter(request,response);
                }else if(user.getRole() == 0){
                    String error = "Không có quyền đăng nhập !!!";
                    session.setAttribute("errorlogin", error);
                    resp.sendRedirect("dang-nhap?action=login");
                }
            }else{
                String error = "Bạn chưa đăng nhập !!!";
                session.setAttribute("errorlogin", error);
                resp.sendRedirect("dang-nhap?action=login");
            }
        }else{
            chain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {

    }
}
