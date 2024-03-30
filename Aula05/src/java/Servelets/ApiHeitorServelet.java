package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONObject;

/**
 *
 * @author heito
 */
@WebServlet(name = "ApiHeitorServelet", urlPatterns = {"/heitor.json"})
public class ApiHeitorServelet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        String[] nome = {"RA: 1290482222035", "Nome: Heitor Pedro de Godoi", "Banco de Dados", "Engenharia de Software III", "Programação Orientada a Objetos",  "Sistemas Operacionais II", "Gestão de Projetos", "Metodologia da Pesquisa Científico-Tecnológica", "Estágio Supervisionado em Análise e Desenvolvimento de Sistemas"};
        try (PrintWriter out = response.getWriter()) {
            
            JSONObject obj = new JSONObject();
            
            for(int i = 0; i < nome.length; i++){
                obj.append("Minhas disciplinas nesse semestre", nome[i]);
            }
            
            out.print(obj);
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
