package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Crud;
import DTO.BBS;

/**
 * Servlet implementation class bbsdeleteServlet
 */
@WebServlet("/bbsdelete.do")
public class bbsdeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bbsdeleteServlet() {
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
		Integer no = Integer.parseInt(request.getParameter("N"));
		String btn = request.getParameter("BTN");
		Crud crud = new Crud();
		System.out.printf(btn);
		Integer result = -1;
		if(btn.equals("삭제"))
		{
			result=crud.bbsdelete(no);
			response.sendRedirect("template.jsp?BODY=bbsDeleteResult.jsp?R="+result);
		}
		else if(btn.equals("수정"))
		{
			String title=request.getParameter("TITLE");
			String content=request.getParameter("CONTENT");
			BBS bbs = new BBS();
			bbs.setTitle(title);
			bbs.setContent(content);
			bbs.setNo(no);
			result = crud.bbsUpdate(bbs);
			response.sendRedirect("template.jsp?BODY=bbsUpdateResult.jsp?R="+result);
			
		}
		
		
	}

}
