package org.empty.loginFilter.servlet;

import org.apache.commons.beanutils.BeanUtils;
import org.empty.loginFilter.pojo.User;
import org.empty.loginFilter.service.UserService;
import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("UTF-8");
        UserService service = new UserService();
        User user = new User();
        try {
            BeanUtils.populate(user,req.getParameterMap());
            boolean b = service.Login(req,user);
            if (b){
                resp.getWriter().write(new JSONObject()
                                        .accumulate("status",200)
                                        .accumulate("msg","登录成功！").toString());
            }else {
                resp.getWriter().write(new JSONObject()
                        .accumulate("status",401)
                        .accumulate("msg","账号或密码不正确！").toString());
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
