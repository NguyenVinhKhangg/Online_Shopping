/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;

/**
 *
 * @author PC
 */
public class SQLContex {

    protected Connection connection = null;
    Statement statement = null;

    public Connection getConnection() {
         if (connection == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost/wish";
                System.out.print("Database Connected");
                connection = DriverManager.getConnection(url, "root", "");
                 
            } catch (ClassNotFoundException ex) {
                System.out.print("Database Not Connected");
                java.util.logging.Logger.getLogger(SQLContex.class.getName()).log(Level.SEVERE, null, ex);
                 
            } catch (SQLException ex) {
                System.out.print("Database Not Connected");
                java.util.logging.Logger.getLogger(SQLContex.class.getName()).log(Level.SEVERE, null, ex);
                 
            }

        }
        return connection;
    }

    public static void main(String[] args) {
        SQLContex q = new SQLContex();
        
        System.out.println(q.connection);
    }
}
