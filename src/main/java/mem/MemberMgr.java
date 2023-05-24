package mem;

import db.DBConnectionMgr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberMgr {
    private DBConnectionMgr pool = null;

    public MemberMgr(){
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }
    public Vector<MemberBean> getMemberList(){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Vector<MemberBean> vlist = new Vector<MemberBean>();
        try{
            conn = pool.getConnection();
            String strQuery = "select * from member";
            pstmt = conn.prepareStatement(strQuery);
            rs = pstmt.executeQuery();
            while(rs.next()){
                MemberBean bean = new MemberBean();
                bean.setId(rs.getString("id"));
                bean.setPwd(rs.getString("pwd"));
                bean.setName(rs.getString("name"));
                bean.setBirthday(rs.getString("birthday"));
                bean.setEmail(rs.getString("email"));
                vlist.addElement(bean);
            }
        }catch (Exception ex){
            System.out.println("Exception" + ex);
        }finally {
            pool.freeConnection(conn);
        }
        return vlist;
    }

    public boolean insertMember(MemberBean bean) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        boolean success = false;

        try{
            conn = pool.getConnection();
            String sql = "insert into member values (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bean.getId());
            pstmt.setString(2, bean.getPwd());
            pstmt.setString(3, bean.getName());
            pstmt.setString(4, bean.getBirthday());
            pstmt.setString(5, bean.getEmail());
            int result = pstmt.executeUpdate();

            if (result > 0) {
                success = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(conn, pstmt);
        }
        return success;
    }

    public MemberBean getMember(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberBean bean = null;

        try {
            conn = pool.getConnection();
            String sql = "select * from member where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                bean = new MemberBean();
                bean.setId(rs.getString("id"));
                bean.setPwd(rs.getString("pwd"));
                bean.setName(rs.getString("name"));
                bean.setBirthday(rs.getString("birthday"));
                bean.setEmail(rs.getString("email"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally {
            pool.freeConnection(conn,pstmt,rs);
        }
        return bean;
    }

    public boolean modifyMember(MemberBean bean) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        boolean success = false;

        try {
            conn = pool.getConnection();
            String sql = "update member set pwd=?, name=?, birthday=?, email=? where id =? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bean.getPwd());
            pstmt.setString(2, bean.getName());
            pstmt.setString(3, bean.getBirthday());
            pstmt.setString(4, bean.getEmail());
            pstmt.setString(5, bean.getId());

            int result = pstmt.executeUpdate();

            if(result > 0) {
                success = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally {
            pool.freeConnection(conn,pstmt);
        }
        return success;
    }

    public boolean loginMember(String id, String pwd) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        boolean success = false;

        try {
            con = pool.getConnection();
            String query = "select count(*) from member where id = ? and pwd = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            rs = pstmt.executeQuery();

            if(rs.next() && rs.getInt(1)>0)
                success=true;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            pool.freeConnection(con,pstmt,rs);
        }
        return success;
    }
}