package com.ketchby.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ketchby.dao.ClassMainDAO;

public class ClassMainAction implements KetchbyAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String keyword = null;
		String a_level = request.getParameter("a_level");
		String cl_level = request.getParameter("cl_level");
		
		if(session.getAttribute("keyword")!=null) {
			keyword = request.getParameter("keyword");
		}
		
		if(request.getParameter("keyword")!= null) {
			keyword = request.getParameter("keyword");
		}
		
		if(request.getParameter("a_level")!= null) {
			keyword = request.getParameter("keyword");
		}
		
		if(request.getParameter("cl_level")!= null) {
			keyword = request.getParameter("keyword");
		}
		
		System.out.println("keyword:"+keyword);
		System.out.println("a_level:"+a_level);
		System.out.println("cl_level:"+cl_level);
		
		session.setAttribute("keyword", keyword);

		int bca_no = Integer.parseInt(request.getParameter("bca_no"));
		ClassMainDAO dao = ClassMainDAO.getInstance();
		request.setAttribute("list", dao.findAllClass(bca_no, keyword, a_level, cl_level));
		request.setAttribute("bca_no", bca_no);
		return "classmain.jsp";
	}
}
