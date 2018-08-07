package servlet;

import Dao.NewsDao;
import entity.PageClass;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.List;

public class FindKindServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException, ServletException {
        String kind_name=null;
        int pageNow = 1;
        List perList;
        response.setCharacterEncoding("UTF-8");//防止乱码
        request.setCharacterEncoding("UTF-8");
        if (request.getParameter("pageNow")!=null){
            pageNow=Integer.parseInt( request.getParameter("pageNow").replace(" ",""));
        }
        if (request.getParameter("kind_name")!=null){
            kind_name=request.getParameter("kind_name").replace(" ","");
        }
        System.out.println(kind_name);
        NewsDao newsDao=new NewsDao();
        ArrayList list = newsDao.findkind(kind_name);
        System.out.println(list);
        PageClass pageClass=new PageClass(10,list.size());
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

        if (list.size()<=10){
            perList=list;
        }
        else {
            perList=list.subList(beginIndex,endIndex);
        }
        request.setAttribute("pageClass",pageClass);
        request.setAttribute("perList",perList);
        request.getRequestDispatcher("kindnews.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        doGet(request,response);
    }
}
