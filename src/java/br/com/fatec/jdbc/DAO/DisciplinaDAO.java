/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;
import br.com.fatec.jdbc.modelo.Disciplina;
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
public class DisciplinaDAO {
    
    private Connection c;
    
    public DisciplinaDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void insere(Disciplina disciplina) throws SQLException{
        String sql = "insert into tbl_disciplina" + " (nome)" + " values (?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,disciplina.getNome());

        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void exclui(Disciplina disciplina) throws SQLException{
        String sql = "delete from tbl_disciplina WHERE id_disciplina = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,disciplina.getId_Disciplina());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Disciplina busca(Disciplina disciplina) throws SQLException{
        String sql = "select * from tbl_disciplina WHERE id_disciplina = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_disciplina WHERE id_disciplina = ?");
        // seta os valores
        stmt.setInt(1,disciplina.getId_Disciplina());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            // criando o objeto Contato
            disciplina.setId_Disciplina(rs.getInt("id_disciplina")); //Em Aspas o nome do Campo no BD
            disciplina.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
        }
        
        stmt.close();
        return disciplina;
    }

    public Disciplina altera(Disciplina disciplina) throws SQLException{
        String sql = "UPDATE tbl_disciplina SET id_disciplina = ?, nome = ? WHERE id_disciplina = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,disciplina.getId_Disciplina());
        stmt.setString(2,disciplina.getNome());
        stmt.setInt(3,disciplina.getId_Disciplina());
 
        // executa
        stmt.execute();
        stmt.close();
        return disciplina;
    }

    public List<Disciplina> lista() throws SQLException{
         // contatos: array armazena a lista de registros

        List<Disciplina> disciplinas = new ArrayList<Disciplina>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_disciplina");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Contato
            Disciplina disciplina = new Disciplina();
            disciplina.setId_Disciplina(rs.getInt("id_disciplina")); //Em Aspas o nome do Campo no BD
            disciplina.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
            disciplinas.add(disciplina);
        }
        rs.close();
        stmt.close();
        return disciplinas;
    } 
}
