package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBhelp {
    private static final String driver="com.mysql.cj.jdbc.Driver";
    private static final String url="jdbc:mysql://localhost:3306/news?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
    private static final String username="root";
    private static final String password="lzizhion2998";
    private static Connection con=null;

    public static Connection getConnection() throws SQLException {
        try{
            Class.forName(driver);
        }catch(Exception e){
            e.printStackTrace();
        }
        if (con==null){
            con=DriverManager.getConnection(url,username,password);
            return con;
        }
        else{
            return con;
        }
    }
    public static void main(String[] args){
        try {
            Connection con=DBhelp.getConnection();
            if (con!=null){
                System.out.println("数据库连接成功");
            }
            else {
                System.out.println("连接异常");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}