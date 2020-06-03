package edu.ipn.upiicsa.tenis.config;
import java.sql.*;
import com.mysql.jdbc.Driver;


public class Conexion {
    Connection con;
    public Conexion(){
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eqi?serverTimezone=UTC&useSSL=false", "invitado", "invitado");
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}
