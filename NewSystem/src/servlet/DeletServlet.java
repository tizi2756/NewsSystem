package servlet;

import Dao.NewsDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeletServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        int id=1;
        NewsDao newsDao=new NewsDao();

        if (request.getParameter("id")!=null){
            id=Integer.parseInt( request.getParameter("id").replace(" ",""));
        }

        try{
            String de=newsDao.DeletNews(id);
            if (de!=null){
                response.sendRedirect("/AdNewsServlet");
            }
            else {
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        doGet(request,response);
    }
}
