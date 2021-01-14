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
public class Excercise {

    DBConnection SQL;
    Connection con;

    public Excercise() throws SQLException, ClassNotFoundException {
        SQL = new DBConnection();
        con = SQL.conectar();
    }

    public JSONObject getExcercices() {

        JSONObject data = new JSONObject();
        String query = "SELECT EJERCICIO.TITULO AS TITULO,\n"
                + "		EJERCICIO.DESCRIPCION AS DESCRIPCION,\n"
                + "		EJERCICIO.IMAGEN AS IMAGEN,\n"
                + "        EJERCICIO.A AS A,\n"
                + "        EJERCICIO.B AS B,\n"
                + "        EJERCICIO.C AS C,\n"
                + "        EJERCICIO. D AS D,\n"
                + "        EJERCICIO.RESPUESTA AS RESPUESTA,\n"
                + "		TEMA.TITULO AS TEMA,\n"
                + "        SUBTEMA.TITULO AS SUBTEMA\n"
                + "FROM EJERCICIO\n"
                + "LEFT JOIN TEMA ON EJERCICIO.ID_TEMA = TEMA.ID_TEMA\n"
                + "LEFT JOIN SUBTEMA ON SUBTEMA.ID_SUBTEMA = TEMA.ID_TEMA;";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                JSONArray arr = new JSONArray();
                do {
                    JSONObject excercise = new JSONObject();
                    
                    excercise.put("Titulo", rs.getString("Titulo"));
                    excercise.put("Descripcion", rs.getString("Descripcion"));
                    excercise.put("Imagen", rs.getString("Imagen"));
                    JSONObject options = new JSONObject();
                    options.put("a", rs.getString("a"));
                    options.put("b", rs.getString("b"));
                    options.put("c", rs.getString("c"));
                    options.put("d", rs.getString("d"));
                    options.put("respuesta", rs.getString("Respuesta"));
                    
                    excercise.put("Opciones",options);
                    excercise.put("Tema", rs.getString("Tema"));
                    excercise.put("Subtema", rs.getString("Subtema"));
                    arr.put(excercise);
                } while (rs.next());

                data.put("topics", arr);
                data.put("state", 200);
                data.put("message", "Ejercicios encontrados.");
            } else {
                data.put("state", 200);
                data.put("message", "No hay ejercicios");
            }
        } catch (SQLException ex) {
            data.put("state", 200);
            data.put("message", "Error al obtener ejercicios.");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data;
    }
}
