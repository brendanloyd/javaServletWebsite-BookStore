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


public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        String message;
        String url;
        User foundUser = UserDB.selectUser(user.getEmail());
        if (foundUser == null) {
            message = "Email not found. Please create a new account.";
            url = "/register.jsp";
        } else if (!foundUser.getPassword().equals(user.getPassword())) {
            message = "The password does not match. Please try again.";
            url = "/login.jsp";
        } else {
            user = foundUser;
            message = "";
            url = "/checkout.jsp";
        }
        
        request.setAttribute("user", user);
        request.setAttribute("message", message);
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
