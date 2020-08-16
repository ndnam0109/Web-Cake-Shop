package com.shopwebcake1.controller.client;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopwebcake1.model.Item;
import com.shopwebcake1.util.CurrencyPrice;

@WebServlet (urlPatterns = {"/view-cart"})
public class CartController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart"); //Lay map tu session
		Map<Integer, Item> map = (Map<Integer, Item>) obj;
		
		
		//Định dạng tiền tệ các item trong map
		Set set = map.keySet();
		for (Object key : set) {
         
          CurrencyPrice curPrice = new CurrencyPrice();
           String string = curPrice.curPrice(map.get(key).getUnitPrice());
          map.get(key).setCurrencyPrice(string);
          
          
        }
			
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/client/cart.jsp");
		dispatcher.forward(req, resp);
	}
}


