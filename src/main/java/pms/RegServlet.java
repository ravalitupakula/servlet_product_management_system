package pms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(urlPatterns = "/reg")
public class RegServlet extends HttpServlet {
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		
		int Id = Integer.parseInt(req.getParameter("id"));
		String P_Name = req.getParameter("p_name");
		String Price = req.getParameter("price");
		String Ratings = req.getParameter("ratings");
		String Quantity = req.getParameter("qnty");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomerce", "root", "root");
			PreparedStatement ps = con.prepareStatement("insert into product values (?,?,?,?,?)");
			ps.setInt(1, Id);
			ps.setString(2, P_Name);
			ps.setString(3, Price);
			ps.setString(4, Ratings);
			ps.setString(5, Quantity);
			int row = ps.executeUpdate();
			System.out.println(row + " : Row inserted");
			PrintWriter pw = res.getWriter();
			pw.write("<h1>Add Product SuccessFully............</h1>");
			RequestDispatcher rd = req.getRequestDispatcher("home.jsp");
			rd.forward(req, res);
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
