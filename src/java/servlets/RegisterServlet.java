/*Brendan Loyd
4/21/2022
Homework 5*/

package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import objects.User;
import database.UserDB;


public class RegisterServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        String message;
        String url;
        User foundUser = UserDB.selectUser(user.getEmail());
        if (foundUser != null) {
            message = "This email address already exists.<br>" +
                          "Please enter another email address.";
            url = "/register.jsp";
        } else {
            message = "";
            UserDB.insert(user);
            url = "/checkout.jsp";
        }
        
        request.setAttribute("user", user);
        request.setAttribute("message", message);
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
