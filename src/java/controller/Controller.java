package controller;

import dao.LivroDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import model.Livro;

/**
 * @author kelli
 */

@WebServlet(name = "Controller", urlPatterns = {"/Controller", "/cadastraLivro", "/addLivrobd", "/listaLivro", "/home", "/editaLivro", "/editaLivrobd", "/deletaLivro", "/buscarLivro"})

public class Controller extends HttpServlet{
    
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = resp.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + req.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        String action = req.getServletPath();
        System.out.println("Action: " + action);
        
        if (action.equals("/cadastraLivro")) {
            
            resp.sendRedirect("addLivro.jsp");
        }
        if (action.equals("/listaLivro")) {
            
            List<Livro> lista = LivroDao.lerTudo();
            
            req.setAttribute("lista", lista);
            
            RequestDispatcher dispatcher = req.getRequestDispatcher("listarLivros.jsp");
            dispatcher.forward(req, resp);
        }
        if (action.equals("/home")) {
            
            resp.sendRedirect("index.html");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        
        String action = req.getServletPath();
        LivroDao dao = new LivroDao();
        Livro livro = new Livro();
        
        if (action.equals("/addLivrobd")) {
            
            livro.setTitulo(req.getParameter("titulo"));
            livro.setAutor(req.getParameter("autor"));
            livro.setDescricao(req.getParameter("descricao"));
            livro.setGenero(req.getParameter("genero"));
            livro.setStatus(req.getParameter("status").charAt(0));
            
            if(dao.salvar(livro) == 1){
                
                resp.sendRedirect("tentsucesso.jsp");
            }
            else{
                
                resp.sendRedirect("tentfalha.jsp");
            }
        }
        
        if (action.equals("/editaLivro")) {
            
            log(req.getParameter("id_livro"));
            livro = LivroDao.getLivroById(Integer.parseInt(req.getParameter("id_livro")));
            
            if(livro.getId_livro() > 0){
                req.setAttribute("livro", livro);
                
                RequestDispatcher dispatcher
                        = req.getRequestDispatcher("editarLivro.jsp"); 
                dispatcher.forward(req, resp);
            }
            else {
                resp.sendRedirect("listarLivros.jsp");
            }
        }
        
        if (action.equals("/editaLivrobd")) {
            
            int aux = (Integer.parseInt(req.getParameter("id_livro")));
            
            livro.setId_livro(aux);
            livro.setTitulo(req.getParameter("titulo"));
            livro.setDescricao(req.getParameter("descricao"));
            livro.setAutor(req.getParameter("autor"));
            livro.setGenero(req.getParameter("genero"));
            livro.setStatus(req.getParameter("status").charAt(0));
            
            if(dao.atualizar(livro) == 1){
                
                resp.sendRedirect("tentsucesso.jsp");
            }
            else{
                resp.sendRedirect("tentfalha.jsp");
            }
        }
        
        if (action.equals("/deletaLivro")) {
            
            livro = LivroDao.getLivroById(Integer.parseInt(req.getParameter("id_livro")));
            
            if(LivroDao.deletar(livro) == 1){
                resp.sendRedirect("tentsucesso.jsp");
            }
            else{
                resp.sendRedirect("tentfalha.jsp");
            }
        }
    }
}