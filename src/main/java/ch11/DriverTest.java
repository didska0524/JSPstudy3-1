package ch11;

import java.sql.*;

public class DriverTest{
    public static void main(String args[]){
        Connection conn = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC",
                    "root", "1234");
            System.out.println("Success");

        }
        catch(SQLException ex){
            System.out.println("SQLException" + ex);
            ex.printStackTrace();
        }
        catch(Exception ex){
            System.out.println("Exception:" + ex);
            ex.printStackTrace();
        }
    }
}
