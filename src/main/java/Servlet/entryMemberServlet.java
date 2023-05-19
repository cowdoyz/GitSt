package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Crud;
import DTO.User;

/**
 * Servlet implementation class entryMemberServlet
 */
@WebServlet("/entryMember.do")
public class entryMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public entryMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("ID");
		String pwd = request.getParameter("PWD");
		String tel = request.getParameter("TEL");
		User user = new User();
		user.setId(id);
		user.setPwd(pwd);
		user.setTel(tel);
		Crud curd = new Crud();
		boolean result = curd.InsertId(user);
		String url=
			"template.jsp?BODY=userEntryResult.jsp?R=";
		if(result) response.sendRedirect(url+"Y");
		else response.sendRedirect(url+"N");
		
		
	}

}
