package servlet;

import Dao.NewsDao;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;

public class NewsAddServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException,IOException{
        String kind;
        int kind_id = 0;
        NewsDao newsDao=new NewsDao();
        ArrayList add_list=new ArrayList<>();
        response.setCharacterEncoding("UTF-8");//防止乱码
        request.setCharacterEncoding("UTF-8");

        kind=request.getParameter("kind_name");
        switch (kind){
            case "军事":
                kind_id=1;
                break;
            case "时政":
                kind_id=2;
                break;
            case "文化":
                kind_id=3;
                break;
            case "财经":
                kind_id=4;
                break;
            case "社会":
                kind_id=5;
                break;
            case "理财":
                kind_id=6;
                break;
            case "教育":
                kind_id=7;
                break;
            case "科技":
                kind_id=8;
                break;
            case "娱乐":
                kind_id=9;
                break;
                default:
                    kind_id=10;
                    break;
        }

        if (getInitParameter("content")==null){
            System.out.println("content");
        }
        add_list.add(0,kind_id);
        add_list.add(1,request.getParameter("title"));
        add_list.add(2,request.getParameter("content"));
        add_list.add(3,request.getParameter("add_time"));
        add_list.add(4,request.getParameter("add_time"));
        add_list.add(5,request.getParameter("author"));
        add_list.add(6,request.getParameter("kind_name"));

        try {
            String newsRealese = newsDao.addNews(add_list);
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
