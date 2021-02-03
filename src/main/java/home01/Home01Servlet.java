package home01;

import java.io.IOException;
import java.util.TimeZone;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/home01/Home01Servlet")
public class Home01Servlet extends HttpServlet {
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
		int tmp = 0;
	
		int n1 = Integer.parseInt(request.getParameter("number1"));
		int n2 = Integer.parseInt(request.getParameter("number2"));
		int n3 = Integer.parseInt(request.getParameter("number1"));
		int n4 = Integer.parseInt(request.getParameter("number2"));
		/**
		* 輸入兩數算最大公因數
		*/
		 while(n1 % n2 != 0){
			 tmp = n2;
			 System.out.println(tmp);
			 n2 = n1 % n2;
			 System.out.println(n2);
			 n1 = tmp;
			 System.out.println(n1);
		 }
		 int HCF=(n2);
		/**
		* 輸入兩數算最小公倍數
		*/
		 int LCM=(n3 * n4 / HCF);

		request.setAttribute("HCF", HCF);
		request.setAttribute("LCM", LCM);
		
		RequestDispatcher rd = request.getRequestDispatcher("/home01/ShowHCF.jsp");
		rd.forward(request, response);
		return;

	}
}