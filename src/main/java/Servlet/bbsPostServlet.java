package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.Crud;
import DTO.BBS;

/**
 * Servlet implementation class bbsPostServlet
 */
@WebServlet("/bbsPost.do")
public class bbsPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bbsPostServlet() {
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
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("TITLE");
		String content = request.getParameter("CONTENT");
		HttpSession session = request.getSession();
		String id = null;
		if(session.getAttribute("MANAGER") != null)
		{
			id = (String)session.getAttribute("MANAGER");
		}
		else
		{
			id = (String)session.getAttribute("USERID");
		}
		Crud crud = new Crud();
		int max = crud.getMaxNo() + 1;
		BBS bbs = new BBS();
		bbs.setNo(max);
		bbs.setTitle(title);
		bbs.setContent(content);
		bbs.setId(id);
		Integer result = crud.InsetBBS(bbs);
		if(result > 0) 
		{
			response.sendRedirect("template.jsp?BODY=bbsResult.jsp?R=Y");
		}
		else 
		{
			response.sendRedirect("template.jsp?BODY=bbsResult.jsp?R=N");
		}
		
	}

}
