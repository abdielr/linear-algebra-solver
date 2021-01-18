/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
    public JSONObject getScoreByIdUser(String id_usuario){
        JSONObject data = new JSONObject();
         try {
             
             String query = "SELECT count(evaluacion) as solved, sum(evaluacion) as score from scoreboard where id_usuario = ? ";
             PreparedStatement st = con.prepareStatement(query);
             st.setString(1, id_usuario);
             ResultSet rs = st.executeQuery();
             JSONObject score = new JSONObject();
             while (rs.next()){
                 score.put("ejercicios resueltos", rs.getString("solved"));
                 score.put("score", rs.getString("score"));
                 data.put("state",200);
                 data.put("message","Score obtenido correctamente.");
                 data.put("score", score);
             }
             
                   
         } catch (SQLException ex) {
             Logger.getLogger(Scoreboard.class.getName()).log(Level.SEVERE, null, ex);
              data.put("state",500);
                 data.put("message","Error al obtener score");
         }
           return data;
    }
    public JSONObject score(String id_usuario,String id_ejercicio,String evaluacion){
       JSONObject data = new JSONObject();
       
        try {
             
          String query = "insert into scoreboard( id_usuario, id_ejercicio, evaluacion) values (?,?,?)";
            PreparedStatement ps;
            ps = con.prepareStatement(query);
            ps.setString(1, id_usuario);
            ps.setString(2, id_ejercicio);
            ps.setString(3, evaluacion);
            ps.execute();
            data.put("state",200);
            data.put("message","Score anotado correctamente.");
        } catch (SQLException ex) {
            data.put("state",500);
            data.put("message","Error al crear Score");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        return data;
    }

    
}
