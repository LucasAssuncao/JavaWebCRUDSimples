/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;
import br.com.fatec.jdbc.modelo.Curso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lucas
 */
public class CursoDAO {
    
    private Connection c;
    
    public CursoDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void insere(Curso curso) throws SQLException{
        String sql = "insert into tbl_curso" + " (nome)" + " values (?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,curso.getNome());

        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void exclui(Curso curso) throws SQLException{
        String sql = "delete from tbl_curso WHERE id_curso = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,curso.getId_Curso());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Curso busca(Curso curso) throws SQLException{
        String sql = "select * from tbl_curso WHERE id_curso = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_curso WHERE id_curso = ?");
        // seta os valores
        stmt.setInt(1,curso.getId_Curso());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            // criando o objeto Contato
            curso.setId_Curso(rs.getInt("id_curso")); //Em Aspas o nome do Campo no BD
            curso.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
        }
        
        stmt.close();
        return curso;
    }

    public Curso altera(Curso curso) throws SQLException{
        String sql = "UPDATE tbl_curso SET id_curso = ?, nome = ? WHERE id_curso = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,curso.getId_Curso());
        stmt.setString(2,curso.getNome());
        stmt.setInt(3,curso.getId_Curso());
 
        // executa
        stmt.execute();
        stmt.close();
        return curso;
    }

    public List<Curso> lista() throws SQLException{
         // contatos: array armazena a lista de registros

        List<Curso> cursos = new ArrayList<Curso>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_curso");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Contato
            Curso curso = new Curso();
            curso.setId_Curso(rs.getInt("id_curso")); //Em Aspas o nome do Campo no BD
            curso.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
            cursos.add(curso);
        }
        rs.close();
        stmt.close();
        return cursos;
    } 
}
