package ch11;

import java.sql.*;
import java.util.Vector;

public class RegisterMgrPool {

    private DBConnectionMgr pool = null;

    public RegisterMgrPool() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("ERROR : 커넥션 얻어오기 실패 실패");
        }
    }

    public Vector<RegisterBean> getRegisterList() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector<RegisterBean> vlist = new Vector<RegisterBean>();

        try {
            conn = pool.getConnection();
            String strQuery = "select * from tblregister";
            stmt = conn.createStatement();
            rs = stmt.executeQuery(strQuery);

            while(rs.next()) {
                RegisterBean bean = new RegisterBean();
                bean.setId(rs.getString("id"));
                bean.setPwd(rs.getString("pwd"));
                bean.setName(rs.getString("name"));
                vlist.addElement(bean);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            pool.freeConnection(conn);
        }
        return vlist;
    }
}
