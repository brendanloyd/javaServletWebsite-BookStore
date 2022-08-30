/*Brendan Loyd
4/21/2022
Homework 5*/

package database;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("pu");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}