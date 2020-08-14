package com.shopwebcake1.controller.client;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopwebcake1.model.Cake;
import com.shopwebcake1.model.Category;
import com.shopwebcake1.service.impl.CakeService;
import com.shopwebcake1.service.impl.CategoryService;



@WebServlet(urlPatterns = { "/trangchu" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = -3174806044336963125L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CakeService cakeService = new CakeService();
		CategoryService categoryService = new CategoryService();
		List<Cake> listCakeDetail = new ArrayList<Cake>();
		
		
		listCakeDetail = cakeService.getAll();  //Lấy list allCake
		for (Cake cake : listCakeDetail ) {
			String curPrice =  cakeService.currencyPrice(cake.getPrice());
			cake.setCurrencyPrice(curPrice);	
						
			
		req.setAttribute("listCakeDetail", listCakeDetail); 
		}
		
		List<Cake> cakeSearchByCategory1 =cakeService.searchByCategory(4); //Lấy listcake bằng categoryId	

		for (Cake cake1 : cakeSearchByCategory1 ) {
			String curPrice1 =  cakeService.currencyPrice(cake1.getPrice());
			cake1.setCurrencyPrice(curPrice1);	//Định dạng tiền tệ
			
			req.setAttribute("cakeSearchByCategory1", cakeSearchByCategory1);
			
		}
	
		
		
		RequestDispatcher rd = req.getRequestDispatcher("views/client/home.jsp");
		rd.forward(req, resp);
		
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
