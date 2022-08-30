/*Brendan Loyd
4/21/2022
Homework 5
Booklist shopping cart form

This page defines the Product class that stores all of its information to be
transfered across web pages.*/

package objects;

import java.io.Serializable;
import java.text.NumberFormat;

public class Product implements Serializable {
    
    private String code;
    private String imgPath;
    private String title;
    private double price;

    public Product() {
        imgPath = "";
        code = "";
        title = "";
        price = 0;
    }
    
    public Product(String code, String imgPath, String title, double price) {
        this.code = code;
        this.imgPath = imgPath;
        this.title = title;
        this.price = price;
    }
    
    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }
    
    public String getImgPath() {
        return imgPath;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }
}