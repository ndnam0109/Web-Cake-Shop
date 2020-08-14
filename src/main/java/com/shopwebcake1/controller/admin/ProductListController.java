package com.shopwebcake1.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopwebcake1.model.Cake;
import com.shopwebcake1.service.impl.CakeService;
import com.shopwebcake1.service.impl.CategoryService;




@WebServlet(urlPatterns = { "/admin-product-list" })
public class ProductListController extends HttpServlet {
	CakeService cakeService = new CakeService();
	CategoryService cateService = new CategoryService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Cake> proList = cakeService.getAll();
		req.setAttribute("proList", proList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/list-product.jsp");
		dispatcher.forward(req, resp);
	}

}
