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
import com.shopwebcake1.model.Item;
import com.shopwebcake1.service.impl.CakeService;

@WebServlet(urlPatterns = { "/add-to-cart" })
public class CartAddController extends HttpServlet {
	CakeService cakeService = new CakeService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		
		
		if (obj == null) {
			Map<Integer, Item> map = new HashMap<Integer, Item>();
			
			String cakeId = req.getParameter("cakeId");
			int quantity = 1;
			Cake cake = cakeService.get(Integer.parseInt(cakeId));
			
			Item item = new Item();
			item.setQuantity(quantity);
			item.setUnitPrice(cake.getPrice());
			item.setCake(cake);
			
			map.put(item.getCake().getCakeId(), item);
			
			
			
			httpSession.setAttribute("quantity", quantity);
		
			httpSession.setAttribute("cart", map);
			

		
		
		
		} else {
			Map<Integer,Item> map = (Map<Integer, Item>) obj;
			
			String cakeId = req.getParameter("cakeId");
			int quantity= 1;
			Cake cake = cakeService.get(Integer.parseInt(cakeId));
			Item item = new Item();
			item.setQuantity(quantity);
			item.setUnitPrice(cake.getPrice());
			item.setCake(cake);
			
			
			

			Item existedCartItem = map.get(Integer.valueOf(cakeId));

			if (existedCartItem == null) {
				map.put(cake.getCakeId(), item);
			} else {
				existedCartItem.setQuantity(existedCartItem.getQuantity() + quantity);
			}
			
			
			
			httpSession.setAttribute("cart", map);

		}
		resp.sendRedirect(req.getContextPath());
	}
	
}