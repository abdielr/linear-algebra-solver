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
public class User { 
    DBConnection SQL;
    Connection con;
    public User() throws SQLException, ClassNotFoundException{
        SQL = new DBConnection();
        con = SQL.conectar();
    }
    
    public JSONObject LogIn(String username,String password){
        JSONObject data = new JSONObject();
        
        String query = "select * from usuario where username = ? and password = ? ";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                
                JSONObject user = new JSONObject();
                user.put("name",rs.getString("nombre"));
                user.put("paterno",rs.getString("paterno"));
                user.put("materno",rs.getString("materno"));
                user.put("username", rs.getString("username"));
                user.put("id_usuario",rs.getString("id_user"));
                user.put("nivel", rs.getInt("nivel") );
                
                data.put("user", user);
                data.put("state",200);
                data.put("message","Usuario encontrado.");
            }else{
                data.put("state",200);
                data.put("message","Usuario no existe.");
            }
        } catch (SQLException ex) {
            data.put("state",200);
            data.put("message","Error al obtener usuario");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
            
        return data;
    }

    public JSONObject SignUp(String username,String password,String name, String paterno, String materno){
       JSONObject data = new JSONObject();
       
        try {
             
          String query = "insert into usuario( nombre, paterno, password , username, materno ) values (?,?,?,?,?)";
            PreparedStatement ps;
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, paterno);
            ps.setString(3, password);
            ps.setString(4, username);
            ps.setString(5, materno);
            
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
    public JSONObject getUserInfo(){
        JSONObject data = new JSONObject();
        return data;
    }
}
