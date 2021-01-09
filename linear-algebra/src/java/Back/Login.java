/*
 * Creado por: Zúñiga Vera Luis Eduardo
 */
package Back;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.HTTP;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author SPARTAN PC
 */
public class Login extends HttpServlet {
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = "Luis";
        String pass = "123";
        String user =  request.getParameter("user");
        String p =  request.getParameter("pass");
        JSONObject data = new JSONObject();
        JSONObject datosUsuario = new JSONObject();
        
        if(user.equals(usuario) && p.equals(pass)){
            datosUsuario.put("state", true);
            datosUsuario.put("nombre", "Luis Eduardo");
            datosUsuario.put("app", "Zuniga");
            datosUsuario.put("apm", "Vera");
        }else{
            datosUsuario.put("state", false);
        }
        
        datosUsuario.put("user", user);
        datosUsuario.put("pass", p);
        data.put("data", datosUsuario);
        response.addHeader("Access-Control-Allow-Origin", "http://localhost:3000");
        response.getWriter().print(data.toString());
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.addHeader("Access-Control-Allow-Origin", "http://localhost:3000");
        response.getWriter().print("Responde bien desde POST");
        
        
    }

}
