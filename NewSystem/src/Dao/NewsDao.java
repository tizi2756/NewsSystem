package Dao;

import util.DBhelp;
import entity.News;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class NewsDao {
    public ArrayList<News> getAllNews(){
        Connection con=null;
        PreparedStatement statm=null;
        ResultSet rs=null;
        ArrayList<News> list =new ArrayList<>();
        try{
            con=DBhelp.getConnection();
            String sql="select * from news;";
            statm=con.prepareStatement(sql);
            rs=statm.executeQuery();
            while (rs.next()){
                News news=new News();
                news.setId(rs.getInt("id"));
                news.setKind_id(rs.getInt("kind_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setAdd_time(rs.getString("add_time"));
                news.setUp_time(rs.getString("up_time"));
                news.setAuthor(rs.getString("author"));
                list.add(news);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        finally {//释放数据集对象
            if (rs!=null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            //释放语句对象
            if (statm!=null) {
                try {
                    statm.close();
                    statm = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    //插入新闻
    public String addNews(ArrayList add_list){
        Connection con=null;
        PreparedStatement ps=null;
        PreparedStatement ps2=null;
        int retryCount=5;
        boolean transactionCompleted = false;
        do {
            try{
                con=DBhelp.getConnection();
                con.setAutoCommit(false);
                retryCount=0;
                Statement stat = con.createStatement();
                String sql="insert into news(kind_id,title,content,add_time,up_time,author) VALUES(?,?,?,?,?,?);";
                String sql2="insert into category(kind_name) value (?);";
                ps=con.prepareStatement(sql);
                ps2=con.prepareStatement(sql2);

                System.out.println(add_list.get(1));
                ps.setInt(1,Integer.parseInt(add_list.get(0).toString()));
                ps.setString(2, add_list.get(1).toString());
                ps.setString(3, add_list.get(2).toString());
                ps.setString(4, add_list.get(3).toString());
                ps.setString(5, add_list.get(4).toString());
                ps.setString(6, add_list.get(5).toString());

                ps2.setString(1,add_list.get(6).toString());

                int i = ps.executeUpdate();
                ps2.executeUpdate();
                con.commit();
                System.out.println("成功添加" + i + "行");
                stat.close();
                return i + "con:" + con;

            }catch (SQLException e){
                e.printStackTrace();
                String sqlState = e.getSQLState();
                if ("08S01".equals(sqlState) || "40001".equals(sqlState))
                {
                    retryCount--;
                } else {
                    retryCount = 0;
                }
                return null;
            }
            finally {//释放数据集对象
                if (ps!=null) {
                    try {
                        ps.close();
                        ps = null;
                        ps2.close();
                        ps2 = null;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

            }

        }while (!transactionCompleted && (retryCount > 0));

    }
//通过ID查找新闻
    public ArrayList<News> FindbyIdNews(int id){
        Connection con=null;
        PreparedStatement statm=null;
        PreparedStatement statm2=null;
        ResultSet rs=null;
        ResultSet rs2=null;
        ArrayList<News> findbyid_list =new ArrayList<>();
        try{
            con=DBhelp.getConnection();
            String sql="select * from news where id=?;";
            String sql2="select * from category where id=?;";
            statm=con.prepareStatement(sql);
            statm2=con.prepareStatement(sql2);
            statm.setInt(1,Integer.valueOf(id));
            statm2.setInt(1,Integer.valueOf(id));//将a标签传过来的id置入sql
            rs=statm.executeQuery();
            rs2=statm2.executeQuery();
            while (rs.next()&&rs2.next()){
                News news=new News();  //获取数据库内容
                news.setId(rs.getInt("id"));
                news.setKind_id(rs.getInt("kind_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setAdd_time(rs.getString("add_time"));
                news.setUp_time(rs.getString("up_time"));
                news.setAuthor(rs.getString("author"));
                news.setKind(rs2.getString("kind_name"));
                findbyid_list.add(news);
            }
            return findbyid_list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        finally {//释放数据集对象
            if (rs!=null) {
                try {
                    rs.close();
                    rs = null;
                    rs2.close();
                    rs2 = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            //释放语句对象
            if (statm!=null) {
                try {
                    statm.close();
                    statm = null;
                    statm2.close();
                    statm2 = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    //删除新闻
    public String DeletNews(int id){
        Connection con=null;
        PreparedStatement statm=null;
        ArrayList detel_list=new ArrayList();
        try{
            con=DBhelp.getConnection();
            String sql="delete from news where id=?;";
            statm=con.prepareStatement(sql);
            statm.setInt(1,Integer.valueOf(id));//将a标签传过来的id置入sql
            statm.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
            //释放语句对象
            if (statm!=null) {
                try {
                    statm.close();
                    statm = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        return detel_list.toString();
    }

    //编辑新闻
    public String updateNews(ArrayList upDate_list){
        Connection con=null;
        PreparedStatement ps=null;
        PreparedStatement ps2=null;
        try{
            con=DBhelp.getConnection();
            con.setAutoCommit(false);
            Statement stat = con.createStatement();
            String sql="update news set kind_id=?,title=?,content=?,add_time=?,up_time=?,author=? where id=?;";
            String sql2="update category set kind_name=? where id=?;";
            ps=con.prepareStatement(sql);
            ps2=con.prepareStatement(sql2);

            ps.setInt(1,Integer.parseInt(upDate_list.get(0).toString()));

            ps.setString(2, upDate_list.get(1).toString());
            ps.setString(3, upDate_list.get(2).toString());
            ps.setString(4, upDate_list.get(3).toString());
            ps.setString(5, upDate_list.get(4).toString());
            ps.setString(6, upDate_list.get(5).toString());
            ps.setInt(7,Integer.parseInt(upDate_list.get(6).toString()));

            ps2.setString(1, upDate_list.get(7).toString());
            ps2.setInt(2,Integer.parseInt(upDate_list.get(6).toString()));
            int i = ps.executeUpdate();
            ps2.executeUpdate();
            con.commit();
            System.out.println("成功添加" + i + "行");
            stat.close();
            return i + "con:" + con;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
        finally {//释放数据集对象
            if (ps!=null) {
                try {
                    ps.close();
                    ps = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
    public ArrayList<News> findkind(String kind_name){
        Connection con=null;
        PreparedStatement statm=null;
        ResultSet rs=null;
        ArrayList<News> list =new ArrayList<>();
        try{
            con=DBhelp.getConnection();
            String sql="select * from news where id in (select id from category where kind_name=?);";
            statm=con.prepareStatement(sql);
            statm.setString(1,kind_name);
            rs=statm.executeQuery();
            while (rs.next()){
                News news=new News();
                news.setId(rs.getInt("id"));
                news.setKind_id(rs.getInt("kind_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setAdd_time(rs.getString("add_time"));
                news.setUp_time(rs.getString("up_time"));
                news.setAuthor(rs.getString("author"));
                list.add(news);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        finally {//释放数据集对象
            if (rs!=null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            //释放语句对象
            if (statm!=null) {
                try {
                    statm.close();
                    statm = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public ArrayList<News> queryNews(String keyword){
        Connection con=null;
        PreparedStatement statm=null;
        ResultSet rs=null;
        ArrayList<News> list =new ArrayList<>();
        try{
            con=DBhelp.getConnection();
            String sql="select * from news where title like '%"+keyword+"%'";
            statm=con.prepareStatement(sql);
            rs=statm.executeQuery();
            while (rs.next()){
                News news=new News();
                news.setId(rs.getInt("id"));
                news.setKind_id(rs.getInt("kind_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setAdd_time(rs.getString("add_time"));
                news.setUp_time(rs.getString("up_time"));
                news.setAuthor(rs.getString("author"));
                list.add(news);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
        finally {//释放数据集对象
            if (rs!=null) {
                try {
                    rs.close();
                    rs = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            //释放语句对象
            if (statm!=null) {
                try {
                    statm.close();
                    statm = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
