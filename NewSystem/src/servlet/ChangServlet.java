package servlet;

import Dao.NewsDao;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;

public class ChangServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException,IOException{
        String kind;
        int kind_id = 0;
        NewsDao newsDao=new NewsDao();
        ArrayList up_list=new ArrayList<>();
        response.setCharacterEncoding("UTF-8");//防止乱码
        request.setCharacterEncoding("UTF-8");

        kind=request.getParameter("kind_name");
        switch (kind){
            case "军事":
                kind_id=1;
                break;
        }

        up_list.add(0,kind_id);
        up_list.add(1,request.getParameter("title"));
        up_list.add(2,request.getParameter("content"));
        up_list.add(3,request.getParameter("add_time"));
        up_list.add(4,request.getParameter("add_time"));
        up_list.add(5,request.getParameter("author"));
        up_list.add(6,request.getParameter("id"));
        up_list.add(7,request.getParameter("kind_name"));


        try {
            String newsRealese = newsDao.updateNews(up_list);
            System.out.println("String:"+newsRealese);
            if (newsRealese!= null) {
                response.sendRedirect("/AdNewsServlet");
            } //else {
            //response.sendRedirect("");
            //}
        } catch (Exception ex){
            ex.printStackTrace();
        }

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServerException,IOException{
        doGet(request,response);
    }
}
