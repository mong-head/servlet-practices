package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
			
		} else if("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);
			
			new GuestbookDao().insert(vo);
			
			//2. redirect
			response.sendRedirect(request.getContextPath()+"/gb");
			
		} else if("delete".equals(action)) {
			long no = Long.parseLong(request.getParameter("no"));
			String password = request.getParameter("password");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(no);
			vo.setPassword(password);
			
			String real_password = new GuestbookDao().findPassword(vo);
			if(password.equals(real_password)){
				new GuestbookDao().delete(vo);
				response.sendRedirect(request.getContextPath()+"/gb"); //redirect
			}
			else{
				response.sendRedirect(request.getContextPath()+"/gb?alert=true"); //redirect	
			}
		} else {
			//index.jsp
			
			// 1 process request
			List<GuestbookVo> list = new GuestbookDao().findAll();
			
			// 2 request 범위에 data 저장
			request.setAttribute("list",list);
			
			// 3 view forwarding
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
