/*Brendan Loyd
4/21/2022
Homework 5*/

package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import objects.Cart;
import javax.servlet.http.*;

public class ReturnServlet extends HttpServlet {

@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        String url;
        url = "/index.jsp";
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
