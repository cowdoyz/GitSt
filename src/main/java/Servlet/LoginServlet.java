package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Crud;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String id = request.getParameter("ID");
		String pwd = request.getParameter("PWD");
		Crud crud = new Crud();
		String findPwd = crud.getPwd(id);
		String result = "";
		if(findPwd == null)
		{
			result = "NOID";
		}
		else
		{
			if(pwd.equals(findPwd))
			{
				result = "OK";
				HttpSession session = request.getSession();
				if(id.equals("manager"))
				{
					session.setAttribute("MANAGER", id);
				}
				else 
				{
					session.setAttribute("USERID", id);
				}
				
			}
			else
			{
				result="NOPWD";
			}
			response.sendRedirect("template.jsp?BODY=loginResult.jsp?R="+result+"&ID="+id);
		}
		
		
		
	}

}
