package servlet;
 
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 
@WebServlet("/servlet/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
 
		String username = request.getParameter("username");
		String company = request.getParameter("company");
		String mailaddress = request.getParameter("mail-address");
		String message = request.getParameter("message");
		String[] magazine = request.getParameterValues("magazine");
		String file = request.getParameter("file");
 
		request.setAttribute("username", username);
		request.setAttribute("company", company);
		request.setAttribute("mail-address", mailaddress);
		request.setAttribute("message", message);
		request.setAttribute("magazine", magazine);
		request.setAttribute("file", file);
 
		// 資料請求が "Yes" であれば、別のページにフォワード
		if ("Yes".equals(file)) {
			request.getRequestDispatcher("/jsp/file_request.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/jsp/contact_result.jsp").forward(request, response);
		}
	}
}