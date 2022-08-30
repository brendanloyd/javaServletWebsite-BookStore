/*Brendan Loyd
4/21/2022
Homework 5*/


package database;

import java.util.ArrayList;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import objects.Book;

public class BookDB {
    public static ArrayList<Book> select() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT b FROM Book b";
        TypedQuery<Book> q = em.createQuery(qString, Book.class);
        try {
            ArrayList<Book> books = new ArrayList(q.getResultList());
            return books;
        } catch (NoResultException e) {
            return new ArrayList();
        } finally {
            em.close();
        }     
    }
    
    public static Book selectBook(String productCode) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT b FROM Book b "
                + "WHERE b.productCode = :productCode";
        TypedQuery<Book> q = em.createQuery(qString, Book.class);
        q.setParameter("productCode", productCode);
        try {
            Book book = q.getSingleResult();
            return book;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }     
    }
}