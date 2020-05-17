/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jualmobil;
import com.mysql.jdbc.Connection;
import java.awt.HeadlessException;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nitro5
 */
public class koneksi {
    Connection conn;
    public Connection getConnection(){
        try {
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jualmobil","root","");
        }
         catch(HeadlessException | SQLException e){
         }
         return conn;
    }
    
}
