package com.shopwebcake1.controller.client;
 
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import com.shopwebcake1.util.Constant;
 @WebServlet (urlPatterns = {"/sendmail"})
public class SendMailController extends HttpServlet {
	 protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
}
   

 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	 try {	    
         Email email = new SimpleEmail();

         // Cấu hình thông tin Email Server
         email.setHostName("smtp.googlemail.com");
         email.setSmtpPort(465);
         email.setAuthenticator(new DefaultAuthenticator(Constant.MY_EMAIL,
                 Constant.MY_PASSWORD));
          
         // Với gmail cái này là bắt buộc.
         email.setSSLOnConnect(true);
          
         // Người gửi
         String from = (String) req.getAttribute("from");
      
		
          
         // Tiêu đề
         String text = (String) req.getAttribute("text");
         email.setSubject(text);
          
         // Nội dung email
         String message = (String) req.getAttribute("message");
         email.setMsg(message);
          
         // Người nhận
         email.addTo(Constant.MY_EMAIL);            
         email.send();
         System.out.println("Sent!!");
		 } catch (EmailException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
     	RequestDispatcher rd = req.getRequestDispatcher("views/client/contact.jsp");
		rd.forward(req, resp);
		req.setAttribute("hoanthanh", "Gửi thành công");
	}
 }
	
 