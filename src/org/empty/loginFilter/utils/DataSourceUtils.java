package org.empty.loginFilter.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author
 * @date 2020/06/29
 */
public class DataSourceUtils {

    public static DataSource dataSource = null;

    static {
        ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();
        dataSource = comboPooledDataSource;
    }


    public static DataSource getDataSource(){
        return dataSource;
    }

    private static ThreadLocal<Connection> t = new ThreadLocal<Connection>();

    public static Connection getConnection() throws SQLException {

        Connection con = t.get();

        if (con==null){
            con = dataSource.getConnection();
            t.set(con);
        }

        return con;

    }

    public void startTransaction() throws SQLException {

        Connection con = getConnection();

        if (con!=null){
            con.setAutoCommit(false);
        }
    }


    public static void releaseAndCloseConnect() throws SQLException {
        Connection con = getConnection();
        if (con!=null){
            con.commit();
            t.remove();
            con.close();
        }
    }

    public static void rollback() throws SQLException {

        Connection con = getConnection();

        if (con!=null){
            con.rollback();
        }
    }


}
