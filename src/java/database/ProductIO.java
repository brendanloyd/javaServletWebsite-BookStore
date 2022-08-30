/*Brendan Loyd
4/21/2022
Homework 5*/

package database;

import objects.Product;
import objects.Book;
import database.BookDB;

public class ProductIO {

    public static Product getProduct(String code) {
        Product product = null;
        Book book = BookDB.selectBook(code);
        
        if (book != null) {
            double price = Double.parseDouble(book.getPrice());
            product = new Product(book.getProductCode(), book.getCoverImage(), book.getTitle(), price);
        }
        
        return product;
    }
}