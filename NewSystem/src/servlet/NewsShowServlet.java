package servlet;
import Dao.NewsDao;
import entity.News;
import entity.PageClass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.List;

public class NewsShowServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException{
        doGet(request,response);
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException {
        int pageNow = 1;
        List perList;
        if (request.getParameter("pageNow")!=null){
            pageNow=Integer.parseInt( request.getParameter("pageNow").replace(" ",""));
        }
        //实例化，传入jsp
        NewsDao newsDao=new NewsDao();
        ArrayList<News> list=newsDao.getAllNews();

        //分页
        PageClass pageClass=new PageClass(4,list.size());
        pageClass.setPageNow(pageNow);

        int beginIndex=(pageNow-1)*pageClass.getPageSize();
        int endIndex=pageNow*pageClass.getPageSize();

        if (endIndex>=list.size()){
            endIndex=list.size()-1;
        }
        if (beginIndex>endIndex){
            beginIndex=0;
            pageClass.setPageNow(pageNow);
        }

        if (list.size()<=4){
            perList=list;
        }
        else {
            perList=list.subList(beginIndex,endIndex);
        }
        request.setAttribute("pageClass",pageClass);
        request.setAttribute("perList",perList);
        request.getRequestDispatcher("allnews.jsp").forward(request,response);
    }

}
