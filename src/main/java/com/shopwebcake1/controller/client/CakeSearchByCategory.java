package com.shopwebcake1.controller.client;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopwebcake1.model.Cake;
import com.shopwebcake1.model.Category;
import com.shopwebcake1.service.impl.CakeService;
import com.shopwebcake1.service.impl.CategoryService;

@WebServlet(urlPatterns="/cake/category")

public class CakeSearchByCategory extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CakeService cakeService =new CakeService();
		CategoryService categoryService = new CategoryService();
		List<Category> list = new ArrayList<Category>();
		
		list =  categoryService.getAll();
		 req.setAttribute("category", list );
		 
			
		 String categoryId=req.getParameter("categoryId");
		 int cate =  Integer.parseInt(categoryId);
			List<Cake> cakeSearchByCategory =cakeService.searchByCategory(cate);
			
			for (Cake e :cakeSearchByCategory ) {
				System.out.println(e);
			}
			
			
			req.setAttribute("cakeSeachByCategory", cakeSearchByCategory);
					
		req.getRequestDispatcher("/views/client/CakeSearchByCategory.jsp").forward(req, resp);
		
		
		
	}
}
