package ch11;

import java.sql.*;
import java.util.Vector;

public class RegisterMgr {
    private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC";
    private final String USER = "root";
    private final String PASS = "1234";

    public RegisterMgr() {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            System.out.println("ERROR : JDBC 드라이버 로딩 실패");
            e.printStackTrace();
        }
    }

    public Vector<RegisterBean> getRegisterList() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector<RegisterBean> vlist = new Vector<RegisterBean>();

        try {
            conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
            stmt = conn.createStatement();
            String strQuery = "select * from tblRegister";
            rs = stmt.executeQuery(strQuery);

            while(rs.next()) {
                RegisterBean bean = new RegisterBean();
                bean.setId(rs.getString("id"));
                bean.setPwd(rs.getString("pwd"));
                bean.setName(rs.getString("name"));
                vlist.addElement(bean);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if(rs != null) try{rs.close();} catch (SQLException e){}
            if(stmt != null) try{rs.close();} catch (SQLException e){}
            if(conn != null) try{rs.close();} catch (SQLException e){}
        }
        return vlist;
    }
}
