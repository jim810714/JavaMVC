package home02;

import java.io.IOException;
import java.time.LocalDate;
import java.util.TimeZone;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/home02/Home02Servlet")
public class Home02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); // 說明傳送到本程式之資料的內碼
	
		String date = request.getParameter("number1");
		System.out.print(date);
//		LocalDate date1 = LocalDate.parse(date);
		int dayOfYear = LocalDate.parse(date).getDayOfYear();


		request.setAttribute("date", date);
		request.setAttribute("dayOfYear", dayOfYear);
		
		RequestDispatcher rd = request.getRequestDispatcher("/home02/ShowDayofYear.jsp");
		rd.forward(request, response);
		return;

	}
}