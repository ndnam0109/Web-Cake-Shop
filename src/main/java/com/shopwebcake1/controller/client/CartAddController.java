package com.shopwebcake1.controller.client;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopwebcake1.model.Cake;
import com.shopwebcake1.model.Cart;
import com.shopwebcake1.model.Item;
import com.shopwebcake1.service.impl.CakeService;
import com.shopwebcake1.util.CurrencyPrice;

@WebServlet(urlPatterns = { "/add-to-cart" })
public class CartAddController extends HttpServlet {
	CakeService cakeService = new CakeService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		CurrencyPrice currencyPrice = new CurrencyPrice();
	
		if (obj == null) {
			Map<Integer, Item> map = new HashMap<Integer, Item>();

			String cakeId = req.getParameter("cakeId");
			String stringQuantity = req.getParameter("quantity");
			System.out.println(stringQuantity);
			int quantity = Integer.parseInt(stringQuantity);
			Cake cake = cakeService.get(Integer.parseInt(cakeId));
			cake.setCurrencyPrice(cakeService.currencyPrice(cake.getPrice()));
			Item item = new Item();
			item.setQuantity(quantity);
			item.setUnitPrice(quantity * cake.getPrice());
			
			// Set totalPrice
			long total = 0;
			total = total + item.getUnitPrice();
			Cart cart = new Cart();
			cart.setTotalPrice(total);
			item.setCake(cake);
			

			map.put(item.getCake().getCakeId(), item);

			httpSession.setAttribute("quantity", quantity);
			httpSession.setAttribute("cartPrice",cart );
			httpSession.setAttribute("cart", map);
			
	
			
			String stringTotal = currencyPrice.curPrice(total);
			httpSession.setAttribute("total", stringTotal);
		

		} else {
			Map<Integer, Item> map = (Map<Integer, Item>) obj;

			String cakeId = req.getParameter("cakeId");
			String stringQuantity = req.getParameter("quantity");
			System.out.println(stringQuantity);
			int quantity = Integer.parseInt(stringQuantity);
			Cake cake = cakeService.get(Integer.parseInt(cakeId));
			cake.setCurrencyPrice(cakeService.currencyPrice(cake.getPrice()));
			Item item = new Item();
			item.setQuantity(quantity);
			item.setUnitPrice(quantity * cake.getPrice());
			item.setCake(cake);

			Item existedCartItem = map.get(Integer.valueOf(cakeId));//Lay item co key la cakeId trong map

			//update map
			if (existedCartItem == null) {
				map.put(item.getCake().getCakeId(), item);
			} else {
				existedCartItem.setQuantity(existedCartItem.getQuantity() + quantity);
				existedCartItem.setUnitPrice(existedCartItem.getUnitPrice() + item.getUnitPrice());
				existedCartItem.setCurrencyPrice(currencyPrice.curPrice(existedCartItem.getUnitPrice()));
			}

			
			httpSession.setAttribute("cart", map); //set map vao session
			

			Cart cart =  (Cart) httpSession.getAttribute("cartPrice");
			 long totalPrice = cart.getTotalPrice(); 
	
			
			totalPrice = totalPrice + item.getUnitPrice();
			cart.setTotalPrice(totalPrice);
			httpSession.setAttribute("cart", map);
			
			String stringTotal = currencyPrice.curPrice(totalPrice);
			httpSession.setAttribute("total", stringTotal);

		}

		resp.sendRedirect(req.getContextPath());
	}

}