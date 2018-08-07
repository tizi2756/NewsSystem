package servlet;

import method.MD;
import util.DBhelp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

public class RegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MD md=new MD();
        response.setCharacterEncoding("UTF-8");//防止乱码
        request.setCharacterEncoding("UTF-8");
        String username=request.getParameter("username");//获取username的值，并赋值
        String pass=request.getParameter("password");//获取password的值，并赋值
        String password=md.convertMD5(pass);//加密
        String sql="insert into news_user(username,password) value('"+username+"','"+password+"')";
        Connection con=null;

        try {
            con=DBhelp.getConnection();
            Statement stmt=con.createStatement();
            stmt.execute(sql);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }catch (Exception e){
            System.err.print(e.fillInStackTrace());
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
