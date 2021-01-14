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
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author abyki
 */
public class Topic {

    DBConnection SQL;
    Connection con;

    public Topic() throws SQLException, ClassNotFoundException {
        SQL = new DBConnection();
        con = SQL.conectar();
    }
    public JSONObject getTopics(){
        JSONObject data = new JSONObject();
        String query = "SELECT tema.titulo as titulo, subtema.titulo as subtitulo FROM tema INNER JOIN subtema on subtema.id_tema = tema.id_tema; ";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                
                JSONArray arr = new JSONArray();
               do{
                   JSONObject topic = new JSONObject();
                    String a = rs.getString("titulo");
                    String b = rs.getString("subtitulo");
                    System.out.println();
                    
                    topic.put("tema", a);
                    topic.put("subtema", b);
                    arr.put(topic);
                }while(rs.next());
              
                data.put("topics", arr);
                data.put("state",200);
                data.put("message","Temas y subtemas encontrados");
            }else{
                data.put("state",200);
                data.put("message","No hay temas");
            }
        } catch (SQLException ex) {
            data.put("state",200);
            data.put("message","Error al obtener temas");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return data;
    }
}
