/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


@WebServlet(name = "SignControl", urlPatterns = {"/signup"})
public class SignControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        String repass = request.getParameter("repass");
        
        if (user.length()<5) {
            request.setAttribute("mess", "Username must have more than 5 character!");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        }
        if (!pass.equals(repass)) {
            request.setAttribute("mess", "Repassword incorrect, please try again!");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        } else  {
            DAO dao = new DAO();
            Account a = dao.CheckAccountExist(user);
            if (a == null) {
                // dc sign up
                dao.SignUp(user, pass);

                response.sendRedirect("home");
            } else {
                request.setAttribute("mess", "User is exist");
                request.getRequestDispatcher("Signup.jsp").forward(request, response);
            } 
        }
        // sign up
    }

    public static String getMd5Hash(String input) {
        try {
//static getInstance() method is called with hashing MD5  
            MessageDigest md = MessageDigest.getInstance("MD5");
//calculating message digest of an input that return array of byte  
            byte[] messageDigest = md.digest(input.getBytes());
//converting byte array into signum representation  
            BigInteger no = new BigInteger(1, messageDigest);
//converting message digest into hex value  
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } //for specifying wrong message digest algorithms  
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
