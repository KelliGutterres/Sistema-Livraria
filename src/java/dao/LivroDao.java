package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Livro;

/*
 * @author kelli
 */
public class LivroDao {
    
    public static Connection getConnection() {
        Connection con = null;
        
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/livromania", "postgres", "postgres");
        } 
        catch (Exception e) {
            System.out.println(e);
        }
        
        return con;
    }
    
    public static int salvar(Livro liv) { // Pronto! 
        int status = 0;
        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO Livro(titulo, autor, descricao, genero, ano_publi, status, num_pages) VALUES (?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, liv.getTitulo());
            ps.setString(2, liv.getAutor());
            ps.setString(3, liv.getDescricao());
            ps.setString(4, liv.getGenero());
            ps.setInt(5, liv.getAno_publi());
            ps.setString(6, String.valueOf(liv.getStatus())); // Converte de um Char para String
            ps.setInt(7, liv.getNum_pag());
            status = ps.executeUpdate();
        } catch (Exception e) {
            
            System.out.println(e);
        }
        System.out.println("Salvar STATUS: "+status);
        return status;
    }
    
    public static int atualizar(Livro liv) {
        int status = 0;
        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE Livro SET titulo=?,autor=?,descricao=?,genero=?,status=? WHERE idliv=?");
            ps.setString(1, liv.getTitulo());
            ps.setString(2, liv.getAutor());
            ps.setString(3, liv.getDescricao());
            ps.setString(4, liv.getGenero());
            ps.setString(5, String.valueOf(liv.getStatus()));
            ps.setInt(6, liv.getId_livro());
            status = ps.executeUpdate();
        } catch (Exception e) {
            
            System.out.println(e);
        }
        System.out.println("editar STATUS: "+status);
        return status;
    }
    
    public static int deletar(Livro liv) {
        int status = 0;
        
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("delete from Livro where idliv=?");
            ps.setInt(1, liv.getId_livro());
            status = ps.executeUpdate();
        } catch (Exception e) {
            
            System.out.println(e);
        }
        System.out.println("Delete STATUS: "+status);
        return status;
    }
    
    public static List<Livro> lerTudo() {
        List<Livro> listAll = new ArrayList<Livro>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Livro");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                Livro liv = new Livro();
                liv.setId_livro(rs.getInt("idliv"));
                liv.setTitulo(rs.getString("titulo"));
                liv.setAutor(rs.getString("autor"));
                liv.setDescricao(rs.getString("descricao"));
                liv.setGenero(rs.getString("genero"));
                liv.setStatus(rs.getString("status").charAt(0));
                listAll.add(liv);
            }
        } catch (Exception e) {
            
            System.out.println(e);
        }
        return listAll;
    }
    
    public static Livro getLivroById(int id_livro) {
        
        Livro liv = null;
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Livro WHERE idliv=?");
            ps.setInt(1, id_livro);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                
                liv = new Livro();
                liv.setId_livro(rs.getInt("idliv"));
                liv.setTitulo(rs.getString("titulo"));
                liv.setAutor(rs.getString("autor"));
                liv.setDescricao(rs.getString("descricao"));
                liv.setGenero(rs.getString("genero"));
                liv.setStatus(rs.getString("status").charAt(0));
            }
        } catch (Exception e) {
            
            System.out.println(e);
        }
        return liv;
    }
}
