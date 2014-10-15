package lab2package;
//why are you so diao?
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import lab2package.Book;

import com.opensymphony.xwork2.ActionSupport;
//this is a new change!!!

public  class BookAction extends ActionSupport {

   private String Title;
   private List<Book> booklist = new ArrayList<Book>();

   public String execute() {
      String ret = ERROR;
      Connection conn = null;

      try {
    	 String sql1 = new String();
         String URL = "jdbc:mysql://localhost:3306/MySQL";
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection(URL, "root", "qing61");
         String sql = "enter the title ='"+Title+"'";
         PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, Title);
         ResultSet rs = ps.executeQuery();
         ResultSet rs1=null;
         while (rs.next()) {
        	sql1 = "select * from Book where Title='"+rs.getString("Title")+"'";
            ret = SUCCESS;
         }
         PreparedStatement ps1 = conn.prepareStatement(sql1);
			rs1 = ps1.executeQuery();
			while (rs1.next()) {
				Book tmp = new Book();
				tmp.setBPK(rs1.getString(1));
				tmp.setTitle(rs1.getString(2));
				tmp.setFK(rs1.getString(3));
				tmp.setPublisher(rs1.getString(4));
				tmp.setPublishdate(rs1.getString(5));
				tmp.setPrice(rs1.getString(6));
				booklist.add(tmp);
				ret = "success";
			}
			booklist.toArray();
      } catch (Exception e) {
         ret = ERROR;
      } finally {
         if (conn != null) {
            try {
               conn.close();
            } catch (Exception e) {
            }
         }
      }
      return ret;
   }

   public void setTitle(String Title) {
      this.Title = Title;
   }

   public String getTitle() {
      return Title;
   }

   public List<Book> getBooklist() {
		return booklist;
   }

   public void getBooklist(List<Book> booklist) {
		this.booklist = booklist;
	}

}
