/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
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
    public JSONObject updateExcercise(String id, String titulo, String desc){
        JSONObject data = new JSONObject();
        /*Metodo solo para hacer una actualziacion de datos para el ejercicio*/
        try {
            String query = "update ejercicio set titulo = ?, descripcion = ? where id_ejercicio = ? ";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, titulo);
            ps.setString(2,desc);
            ps.setString(3,id);
            ps.execute();
            data.put("state", 200);
            data.put("message", "Ejercicio actualizado");
        } catch (SQLException ex) {
            data.put("state", 500);
            data.put("message", "Error al actualizar el ejercicio.");
            Logger.getLogger(Excercise.class.getName()).log(Level.SEVERE, null, ex);
        }

        return data;
    }
    public JSONObject deleteExcerciseById(String id_excercise) {
        JSONObject data = new JSONObject();
        /*Metodo para borrar el ejercicio por medio de su id*/
        try {
            String query = "delete from ejercicio where id_ejercicio = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(id_excercise));
            ps.execute();
            data.put("state", 200);
            data.put("message", "Ejercicio eliminado.");
        } catch (SQLException ex) {
            data.put("state", 500);
            data.put("message", "Error al eliminar el ejercicio.");
            Logger.getLogger(Excercise.class.getName()).log(Level.SEVERE, null, ex);
        }

        return data;
    }

    public JSONObject getExcerciseByIdTopic(String id_excercise) {
        /*Obtenemos Todos los detalles de un ejercicio perteneciente a un tema
            utilizamos 2 left join para unir las columnas de las tamblas tema y subtema
        Usamos Base64 para enviar el BLOB que esta guardado en la base de datos.
        Usamos base46 para que no lleguen a existir bytes perdidos por caracteres no reconocidos
        en el frontend.
         */
        JSONObject data = new JSONObject();
        String query = "SELECT EJERCICIO.ID_EJERCICIO AS ID_EJERCICIO, "
                + "EJERCICIO.TITULO AS TITULO,\n"
                + "            	EJERCICIO.DESCRIPCION AS DESCRIPCION,\n"
                + "              	EJERCICIO.IMAGEN AS IMAGEN,\n"
                + "                     EJERCICIO.A AS A,\n"
                + "                   EJERCICIO.B AS B,\n"
                + "              EJERCICIO.C AS C,\n"
                + "                   EJERCICIO. D AS D,\n"
                + "                      EJERCICIO.RESPUESTA AS RESPUESTA,\n"
                + "            	TEMA.TITULO AS TEMA,\n"
                + "                     SUBTEMA.TITULO AS SUBTEMA,"
                + "                     TEMA.VIDEO AS VIDEO \n"
                + "                FROM EJERCICIO\n"
                + "LEFT JOIN TEMA ON EJERCICIO.ID_TEMA = TEMA.ID_TEMA\n"
                + "LEFT JOIN SUBTEMA ON SUBTEMA.ID_SUBTEMA = TEMA.ID_TEMA "
                + " \n"
                + "WHERE TEMA.ID_TEMA = ?;\n";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id_excercise);
            ResultSet rs = ps.executeQuery();
           JSONArray arr = new JSONArray();
            if (rs.next()) {
                do {
                     JSONObject excercise = new JSONObject();

                    excercise.put("titulo", rs.getString("Titulo"));
                    excercise.put("descripcion", rs.getString("Descripcion"));
                    excercise.put("id_ejercicio", rs.getString("id_ejercicio"));
                    excercise.put("video", rs.getString("video"));
                    String encodedA, encodedB, encodedC, encodedD, encodedImage;
                    /*Si es que no hayu una imagen guardada simplemente manda un string vacio*/
                    if (rs.getBlob("a") != null) {
                        encodedA = Base64.getEncoder().encodeToString(rs.getBlob("a").getBytes(1, (int) rs.getBlob("a").length()));

                    } else {
                        encodedA = "";
                    }
                    if (rs.getBlob("b") != null) {
                        encodedB = Base64.getEncoder().encodeToString(rs.getBlob("b").getBytes(1, (int) rs.getBlob("b").length()));

                    } else {
                        encodedB = "";
                    }
                    if (rs.getBlob("c") != null) {
                        encodedC = Base64.getEncoder().encodeToString(rs.getBlob("c").getBytes(1, (int) rs.getBlob("c").length()));

                    } else {
                        encodedC = "";
                    }
                    if (rs.getBlob("d") != null) {
                        encodedD = Base64.getEncoder().encodeToString(rs.getBlob("d").getBytes(1, (int) rs.getBlob("d").length()));

                    } else {
                        encodedD = "";
                    }
                    if (rs.getBlob("imagen") != null) {
                        encodedImage = Base64.getEncoder().encodeToString(rs.getBlob("imagen").getBytes(1, (int) rs.getBlob("imagen").length()));

                    } else {
                        encodedImage = "";
                    }

                    excercise.put("a", encodedA);
                    excercise.put("b", encodedB);
                    excercise.put("c", encodedC);
                    excercise.put("d", encodedD);
                    excercise.put("imagen", encodedImage);
                    excercise.put("respuesta", rs.getString("Respuesta"));

                    excercise.put("tema", rs.getString("Tema"));
                    excercise.put("subtema", rs.getString("Subtema"));
                    arr.put(excercise);
                } while (rs.next());
                data.put("ejercicios", arr);
                data.put("state", 200);
                data.put("message", "Ejercicio encontrados.");
            } else {
                data.put("state", 404);
                data.put("message", "Ejercicio no encontrado.");
                return data;
            }

        } catch (SQLException ex) {
            Logger.getLogger(Excercise.class.getName()).log(Level.SEVERE, null, ex);

            data.put("state", 500);
            data.put("message", "Error al obtener ejercicio.");
        }

        return data;
    }

    public JSONObject getExcerciseById(String id_excercise) {
        JSONObject data = new JSONObject();
        /*
        Obtenemos los detalles de el ejercicio filtrado por la id de este
        */
        String query = "SELECT EJERCICIO.ID_EJERCICIO AS ID_EJERCICIO, "
                + "EJERCICIO.TITULO AS TITULO,\n"
                + "            	EJERCICIO.DESCRIPCION AS DESCRIPCION,\n"
                + "              	EJERCICIO.IMAGEN AS IMAGEN,\n"
                + "                     EJERCICIO.A AS A,\n"
                + "                   EJERCICIO.B AS B,\n"
                + "              EJERCICIO.C AS C,\n"
                + "                   EJERCICIO. D AS D,\n"
                + "                      EJERCICIO.RESPUESTA AS RESPUESTA,\n"
                + "            	TEMA.TITULO AS TEMA,\n"
                + "                     SUBTEMA.TITULO AS SUBTEMA,"
                + "                     TEMA.VIDEO AS VIDEO \n"
                + "                FROM EJERCICIO\n"
                + "LEFT JOIN TEMA ON EJERCICIO.ID_TEMA = TEMA.ID_TEMA\n"
                + "LEFT JOIN SUBTEMA ON SUBTEMA.ID_SUBTEMA = TEMA.ID_TEMA "
                + " \n"
                + "WHERE id_ejercicio = ?;\n";
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, id_excercise);
            ResultSet rs = ps.executeQuery();
            JSONObject excercise = new JSONObject();

            if (rs.next()) {
                do {
                    excercise.put("titulo", rs.getString("Titulo"));
                    excercise.put("descripcion", rs.getString("Descripcion"));
                    excercise.put("id_ejercicio", rs.getString("id_ejercicio"));
                    excercise.put("video", rs.getString("video"));
                    String encodedA, encodedB, encodedC, encodedD, encodedImage;
                    if (rs.getBlob("a") != null) {
                        encodedA = Base64.getEncoder().encodeToString(rs.getBlob("a").getBytes(1, (int) rs.getBlob("a").length()));

                    } else {
                        encodedA = "";
                    }
                    if (rs.getBlob("b") != null) {
                        encodedB = Base64.getEncoder().encodeToString(rs.getBlob("b").getBytes(1, (int) rs.getBlob("b").length()));

                    } else {
                        encodedB = "";
                    }
                    if (rs.getBlob("c") != null) {
                        encodedC = Base64.getEncoder().encodeToString(rs.getBlob("c").getBytes(1, (int) rs.getBlob("c").length()));

                    } else {
                        encodedC = "";
                    }
                    if (rs.getBlob("d") != null) {
                        encodedD = Base64.getEncoder().encodeToString(rs.getBlob("d").getBytes(1, (int) rs.getBlob("d").length()));

                    } else {
                        encodedD = "";
                    }
                    if (rs.getBlob("imagen") != null) {
                        encodedImage = Base64.getEncoder().encodeToString(rs.getBlob("imagen").getBytes(1, (int) rs.getBlob("imagen").length()));

                    } else {
                        encodedImage = "";
                    }

                    excercise.put("a", encodedA);
                    excercise.put("b", encodedB);
                    excercise.put("c", encodedC);
                    excercise.put("d", encodedD);
                    excercise.put("imagen", encodedImage);
                    excercise.put("respuesta", rs.getString("Respuesta"));

                    excercise.put("tema", rs.getString("Tema"));
                    excercise.put("subtema", rs.getString("Subtema"));
                } while (rs.next());
                data.put("ejercicio", excercise);
                data.put("state", 200);
                data.put("message", "Ejercicio encontrados.");
            } else {
                data.put("state", 404);
                data.put("message", "Ejercicio no encontrado.");
                return data;
            }

        } catch (SQLException ex) {
            Logger.getLogger(Excercise.class.getName()).log(Level.SEVERE, null, ex);

            data.put("state", 500);
            data.put("message", "Error al obtener ejercicio.");
        }

        return data;
    }

    public JSONObject uploadExcercices(String title, InputStream imageURL, String description,
            InputStream aURL, InputStream bURL, InputStream cURL, InputStream dURL,
            String answer, String id_topic, String id_subtopic) {
        /*
            Para guardar las imagenes en la bd usamos el tipo de dato blob en MYSQL
            Usamos el Input stream para guardar en la bd la imagen
        */
        JSONObject data = new JSONObject();
        try {

            String query = "insert into ejercicio(titulo , imagen, a, b, c, d, respuesta, descripcion,"
                    + "id_tema, id_sub ) values (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps;
            ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setBlob(2, imageURL);
            ps.setBlob(3, aURL);
            ps.setBlob(4, bURL);
            ps.setBlob(5, cURL);
            ps.setBlob(6, dURL);
            ps.setString(7, answer);
            ps.setString(8, description);
            ps.setString(9, id_topic);
            ps.setString(10, id_subtopic);
            ps.execute();
            data.put("state", 200);
            data.put("message", "Ejercicio creado correctamente.");
        } catch (SQLException ex) {
            data.put("state", 500);
            data.put("message", "Error al crear ejercicio.");
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data;
    }

    public JSONObject getExcercices() {
        /*
        Se obtienen todos los ejercicios que estan en la base de datos
        igualemnte con su tema y subtema pertenecientes
        */
        JSONObject data = new JSONObject();
        String query = "SELECT EJERCICIO.ID_EJERCICIO AS ID_EJERCICIO,"
                + "             EJERCICIO.TITULO AS TITULO,\n"
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

                    excercise.put("titulo", rs.getString("Titulo"));
                    excercise.put("id_ejercicio", rs.getString("id_ejercicio"));
                    excercise.put("descripcion", rs.getString("Descripcion"));

                    JSONObject options = new JSONObject();

                    String encodedA, encodedB, encodedC, encodedD, encodedImage;
                    if (rs.getBlob("a") != null) {
                        encodedA = Base64.getEncoder().encodeToString(rs.getBlob("a").getBytes(1, (int) rs.getBlob("a").length()));

                    } else {
                        encodedA = "";
                    }
                    if (rs.getBlob("b") != null) {
                        encodedB = Base64.getEncoder().encodeToString(rs.getBlob("b").getBytes(1, (int) rs.getBlob("b").length()));

                    } else {
                        encodedB = "";
                    }
                    if (rs.getBlob("c") != null) {
                        encodedC = Base64.getEncoder().encodeToString(rs.getBlob("c").getBytes(1, (int) rs.getBlob("c").length()));

                    } else {
                        encodedC = "";
                    }
                    if (rs.getBlob("d") != null) {
                        encodedD = Base64.getEncoder().encodeToString(rs.getBlob("d").getBytes(1, (int) rs.getBlob("d").length()));

                    } else {
                        encodedD = "";
                    }
                    if (rs.getBlob("imagen") != null) {
                        encodedImage = Base64.getEncoder().encodeToString(rs.getBlob("imagen").getBytes(1, (int) rs.getBlob("imagen").length()));

                    } else {
                        encodedImage = "";
                    }

                    options.put("a", encodedA);
                    options.put("b", encodedB);
                    options.put("c", encodedC);
                    options.put("d", encodedD);
                    excercise.put("imagen", encodedImage);
                    options.put("respuesta", rs.getString("Respuesta"));

                    excercise.put("opciones", options);
                    excercise.put("tema", rs.getString("Tema"));
                    excercise.put("subtema", rs.getString("Subtema"));
                    arr.put(excercise);
                } while (rs.next());

                data.put("topics", arr);
                data.put("state", 200);
                data.put("message", "Ejercicios encontrados.");
            } else {
                data.put("state", 404);
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
