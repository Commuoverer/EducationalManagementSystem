package com.shhy.interceptor;

import com.shhy.domain.Administrator;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import com.shhy.domain.Student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //对用户的所有请求获取该请求的URL
        String requestURI = request.getRequestURI();
        //判断是否是允许用户直接访问的
        if(requestURI.indexOf("/administrator/login") >= 0){
            return true;//放行
        }
        //对于已经登录的用户,允许放行,已登录用户的标识是    ADMIN_SESSION
        HttpSession session = request.getSession();
        Administrator administrator= (Administrator) session.getAttribute("ADMIN_SESSION");
        if(administrator != null){
            return true;
        }
        //对于不符合条件的url,拦截其访问,并转发到登录页面
        request.getRequestDispatcher("/administrator/login").forward(request,response);
        return false;//拦截
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
