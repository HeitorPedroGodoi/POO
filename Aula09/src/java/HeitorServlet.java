

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author heito
 */
@WebServlet(urlPatterns = {"/heitor"})
public class HeitorServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        String[] nome = {"RA: 1290482222035", "Nome: Heitor Pedro de Godoi"};
        String[] disc = {"Banco de Dados", "Engenharia de Software III", "Programação Orientada a Objetos",  "Sistemas Operacionais II", "Gestão de Projetos", "Metodologia da Pesquisa Científico-Tecnológica", "Estágio Supervisionado em Análise e Desenvolvimento de Sistemas"};
        }
        try (PrintWriter out = response.getWriter()) {
            
           
        }
    }
