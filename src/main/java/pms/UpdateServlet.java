package pms;

import java.io.IOException;
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


@WebServlet(urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {
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
			PreparedStatement ps = con.prepareStatement("update product set p_name = ? , price = ? , ratings = ? , quantity = ? where id = ?");
			ps.setString(1, P_Name);
			ps.setString(2, Price);
			ps.setString(3, Ratings);
			ps.setString(4, Quantity);
			ps.setInt(5, Id);
			int row = ps.executeUpdate();
			RequestDispatcher rd = req.getRequestDispatcher("allproducts");
			rd.include(req, res);
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
