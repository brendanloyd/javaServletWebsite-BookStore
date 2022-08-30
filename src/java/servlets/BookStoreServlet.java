//Brendan Loyd
//4/21/2022
//Homework 5
//
//This servlet is the first landing page of the program.

package servlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.ArrayList;
import objects.Book;
import database.BookDB;

public class BookStoreServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ArrayList<Book> books = BookDB.select();
        if (books == null) {
            books = new ArrayList();
        }
        
        HttpSession session = request.getSession();
        session.setAttribute("books", books);

        String url = "/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        
    }
}