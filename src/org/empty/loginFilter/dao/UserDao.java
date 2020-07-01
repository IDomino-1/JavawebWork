package org.empty.loginFilter.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.empty.loginFilter.pojo.User;
import org.empty.loginFilter.utils.DataSourceUtils;


import java.sql.SQLException;

public class UserDao {

    public User findUser(User user) throws SQLException {
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "SELECT * FROM users WHERE username = ? and password = ?";
        User user1 = runner.query(sql,new BeanHandler<User>(User.class),user.getUsername(),user.getPassword());
        return user1;
    }

}
