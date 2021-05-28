package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//value test
		int iVal = 10;
		int lVal = 10;
		float fVal = 3.14f;
		boolean bVal = true;
		String sVal = "가\n나\n달\n라";
		
		request.setAttribute("ival", iVal);
		request.setAttribute("lval", lVal);
		request.setAttribute("fval", fVal);
		request.setAttribute("bval", bVal);
		request.setAttribute("sval", sVal);
		
		// 객체
		UserVo userVo = new UserVo();
		userVo.setNo(10L);
		userVo.setName("둘리");
		
		Object obj = null;
		
		request.setAttribute("obj", obj);
		request.setAttribute("vo", userVo);
		
		// map
		Map<String,Object> map = new HashMap<>();
		map.put("ival", iVal);
		map.put("lval", lVal);
		map.put("fval", fVal);
		map.put("bval", bVal);
		map.put("sval", sVal);
		
		request.setAttribute("map", map);
		
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
