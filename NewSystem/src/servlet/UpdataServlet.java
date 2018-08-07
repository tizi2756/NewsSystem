package servlet;

import Dao.NewsDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;

public class UpdataServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException {
        int id = 1;

        if (request.getParameter("id")!=null){
            id=Integer.parseInt( request.getParameter("id").replace(" ",""));
        }

        NewsDao newsDao=new NewsDao();
        ArrayList list = newsDao.FindbyIdNews(id);

        request.setAttribute("list",list);
        request.getRequestDispatcher("changnews.jsp").forward(request,response);

    }
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        doGet(request,response);
    }
}
