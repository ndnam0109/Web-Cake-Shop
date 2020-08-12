package com.shopwebcake1.controller.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopwebcake1.service.impl.UserService;
import com.shopwebcake1.util.Constant;

@WebServlet(urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("useName") != null) {
			resp.sendRedirect(req.getContextPath() + "/waiting");
			return;
		}
		// Check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userName")) {
					session = req.getSession(true);
					session.setAttribute("userName", cookie.getValue());

					resp.sendRedirect(req.getContextPath() + "/waiting");
					return;
				}
			}
		}

		req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		String gmail = req.getParameter("gmail");
		String fullName = req.getParameter("fullName");

		UserService userService = new UserService();
		String thongBao = "";

		if (userService.checkExistEmail(gmail)) {
			thongBao = "Gmai đã được sử dụng! Dùng Gmail khác!";
			req.setAttribute("thongBao", thongBao);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			
		}
		if (userService.checkExistUsername(userName)) {
			thongBao = "Tên đăng nhập đã được sử dụng! Dùng tên đăng nhập khác!";
			req.setAttribute("thongBao", thongBao);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
			
		} else {
			userService.register(userName, password, fullName, 2, gmail);
			
			thongBao = "Đăng kí thành công";
			req.setAttribute("thongBao", thongBao);
			req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);

		}
	}
}
