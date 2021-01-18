/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONObject;

/**
 *
 * @author abyki
 */
public class Scoreboard {
    
     DBConnection SQL;
    Connection con;

    public Scoreboard() throws SQLException, ClassNotFoundException {
        SQL = new DBConnection();
        con = SQL.conectar();
    }
    public JSONObject Score(String id_usuario,String id_ejercicio,String evaluacion){
       JSONObject data = new JSONObject();
       
        try {
             
          String query = "insert into usuario( nombre, paterno, password , username, materno ) values (?,?,?,?,?)";
            PreparedStatement ps;
            ps = con.prepareStatement(query);
           // ps.setString(1, name);
         //   ps.setString(2, paterno);
            
            ps.execute();
            data.put("state",200);
            data.put("message","Usuario creado correctamente.");
        } catch (SQLException ex) {
            data.put("state",500);
            data.put("message","Error al crear usuario.");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return data;
    }

    
}
