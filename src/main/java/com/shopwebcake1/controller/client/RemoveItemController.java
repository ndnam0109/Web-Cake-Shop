package com.shopwebcake1.controller.client;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopwebcake1.model.Cart;
import com.shopwebcake1.model.Item;
import com.shopwebcake1.util.CurrencyPrice;

@WebServlet (urlPatterns = {"/remove-item"} )
public class RemoveItemController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");// Doc tu Session ra
		String cakeId = req.getParameter("cakeId");
		if (obj != null) {
			Map<Integer, Item> map = (Map<Integer,Item>) obj; // Ep kieu
					 
			Item item = map.get(Integer.parseInt(cakeId));//lau item de cap nhat totalPrice
			
			
			Cart cart =  (Cart) httpSession.getAttribute("cartPrice");
			 long totalPrice = cart.getTotalPrice(); 
			totalPrice = totalPrice - item.getUnitPrice();
			cart.setTotalPrice(totalPrice);
			httpSession.setAttribute("cart", map);

			CurrencyPrice currencyPrice = new CurrencyPrice();
			String stringTotal = currencyPrice.curPrice(totalPrice);
			httpSession.setAttribute("total", stringTotal);
			
			
			map.remove(Integer.parseInt(cakeId));

			
			
			httpSession.setAttribute("cart", map); // Cap nhat lai Session
		}
		resp.sendRedirect(req.getContextPath() + "/view-cart");
	}

}
