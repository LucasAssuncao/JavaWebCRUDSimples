package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;
import br.com.fatec.jdbc.modelo.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProfessorDAO {
    
    private Connection c;
    
    public ProfessorDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void insere(Professor professor) throws SQLException{
        String sql = "insert into tbl_professor" + " (rg_professor, nome)" + " values (?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,professor.getRg_Professor());
        stmt.setString(2,professor.getNome());

        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void exclui(Professor professor) throws SQLException{
        String sql = "delete from tbl_professor WHERE id_professor = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,professor.getId_Professor());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Professor busca(Professor professor) throws SQLException{
        String sql = "select * from tbl_professor WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_professor WHERE id_professor = ?");
        // seta os valores
        stmt.setInt(1,professor.getId_Professor());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            // criando o objeto Contato
            professor.setId_Professor(rs.getInt("id_professor")); //Em Aspas o nome do Campo no BD
            professor.setRg_Professor(rs.getString("rg_professor")); //Em Aspas o nome do Campo no BD
            professor.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
        }
        
        stmt.close();
        return professor;
    }

    public Professor altera(Professor professor) throws SQLException{
        String sql = "UPDATE tbl_professor SET id_professor = ?, rg_professor = ?, nome = ? WHERE id_professor = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,professor.getId_Professor());
        stmt.setString(2,professor.getRg_Professor());
        stmt.setString(3,professor.getNome());
        stmt.setInt(4,professor.getId_Professor());
 
        // executa
        stmt.execute();
        stmt.close();
        return professor;
    }

    public List<Professor> lista() throws SQLException{
         // contatos: array armazena a lista de registros

        List<Professor> professors = new ArrayList<Professor>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_professor");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Contato
            Professor professor = new Professor();
            professor.setId_Professor(rs.getInt("id_professor")); //Em Aspas o nome do Campo no BD
            professor.setRg_Professor(rs.getString("rg_professor")); //Em Aspas o nome do Campo no BD
            professor.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
            professors.add(professor);
        }
        rs.close();
        stmt.close();
        return professors;
    }
}
