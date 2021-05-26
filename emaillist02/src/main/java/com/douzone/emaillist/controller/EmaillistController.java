package com.douzone.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식으로 전달받는 parameter value 의 encoding processing
		request.setCharacterEncoding("utf-8");
		
		//mapping
		String action = request.getParameter("a");
		if("form".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/form.jsp");
			rd.forward(request,response);
		} else if("add".equals(action)) {
			String firstName = request.getParameter("fn");
			String lastName = request.getParameter("ln");
			String email = request.getParameter("email");
			
			EmaillistVo vo = new EmaillistVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			new EmaillistDao().insert(vo);
			
			//2. redirect
			response.sendRedirect(request.getContextPath()+"/el");
		} else {
			/*handle default request(action)*/
			
			//1. 요청 처리
			List<EmaillistVo> list = new EmaillistDao().findAll();
			
			//2. request 범위에 data 저장
			request.setAttribute("list", list);
			
			//3. view로 forwarding
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/index.jsp");
			rd.forward(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response); 
	}

}
