package org.empty.loginFilter.filter;

import org.apache.http.HttpResponse;
import org.empty.loginFilter.pojo.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RouterFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
           HttpServletRequest request = (HttpServletRequest) servletRequest;
           HttpServletResponse response = (HttpServletResponse) servletResponse;
           User user = (User) request.getSession().getAttribute("user");
           if (user!=null){
               filterChain.doFilter(request,response);
           }else{
                response.sendRedirect(request.getContextPath()+"/index.jsp");
           }
    }

    @Override
    public void destroy() {

    }
}
