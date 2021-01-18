/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.excercise;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Excercise;

import org.json.JSONObject;

/**
 *
 * @author abyki
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class uploadExcercise extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.addHeader("Access-Control-Allow-Origin", "http://localhost:3000");
        response.addHeader("Access-Control-Allow-Credentials", "true");
        response.addHeader("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT");
        response.addHeader("Access-Control-Allow-Headers", "Content-Type, Accept");


        Excercise e;
        JSONObject data = new JSONObject();
        try {
            e = new Excercise();
            String title = request.getParameter("titulo");
            String descriptionn = request.getParameter("descripcion");
            String answer = request.getParameter("respuesta");
            String id_topic = request.getParameter("id_tema");
            String id_subtopic = request.getParameter("id_subtema");
            InputStream image = request.getPart("imagen").getInputStream();
            InputStream a = request.getPart("a").getInputStream();
            InputStream b = request.getPart("b").getInputStream();
            InputStream c = request.getPart("c").getInputStream();
            InputStream d = request.getPart("d").getInputStream();
            data = e.uploadExcercices(title, image, descriptionn, a, b, c, d, answer, id_topic, id_subtopic);
        } catch (SQLException ex) {
            Logger.getLogger(uploadExcercise.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(uploadExcercise.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.getWriter().print(data);
        response.getWriter().flush();
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.addHeader("Access-Control-Allow-Origin", "http://localhost:3000");
        response.addHeader("Access-Control-Allow-Credentials", "true");
        response.addHeader("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT");
        response.addHeader("Access-Control-Allow-Headers", "Content-Type, Accept");


        Excercise e;
        JSONObject data = new JSONObject();
        try {
            e = new Excercise();
            String title = request.getParameter("titulo");
            String descriptionn = request.getParameter("descripcion");
            String answer = request.getParameter("respuesta");
            String id_topic = request.getParameter("id_tema");
            String id_subtopic = request.getParameter("id_subtema");
            InputStream image = request.getPart("imagen").getInputStream();
            InputStream a = request.getPart("a").getInputStream();
            InputStream b = request.getPart("b").getInputStream();
            InputStream c = request.getPart("c").getInputStream();
            InputStream d = request.getPart("d").getInputStream();
            data = e.uploadExcercices(title, image, descriptionn, a, b, c, d, answer, id_topic, id_subtopic);
        } catch (SQLException ex) {
            Logger.getLogger(uploadExcercise.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(uploadExcercise.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.getWriter().print(data);
        response.getWriter().flush();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
