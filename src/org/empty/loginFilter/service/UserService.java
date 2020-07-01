package org.empty.loginFilter.service;

import org.empty.loginFilter.dao.UserDao;
import org.empty.loginFilter.pojo.User;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

public class UserService {

    public boolean Login(HttpServletRequest request,User user) throws SQLException {
        UserDao dao = new UserDao();
        User user1 = dao.findUser(user);
        if (user1!=null) {
            request.getSession().setAttribute("user", user1);
            return true;
        }else{
            return false;
        }
    }

}
