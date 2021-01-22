/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
/**
 *
 * @author abyki
 */
public class DBConnection {
        /*
            Esta es la clase, en la cual usaremos para la conexion
            Los parametros extra en la URI de la conexion son para compatibilidad con MYSQL8
    */
        public Connection conectar() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = null;
        String sURL = "jdbc:mysql://localhost:3306/linearalgebra?useUnicode=true&useSSL=false";
        
        con =  DriverManager.getConnection(sURL, "root", "1234");
        
        return con;
    }
    
}
