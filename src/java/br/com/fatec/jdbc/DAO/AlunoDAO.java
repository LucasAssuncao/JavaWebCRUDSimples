package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;
import br.com.fatec.jdbc.modelo.Aluno;
import br.com.fatec.jdbc.modelo.Notas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AlunoDAO {
    
    private Connection c;
    
    public AlunoDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void insere(Aluno aluno) throws SQLException{
        String sql = "insert into tbl_aluno" + " (ra_aluno, nome)" + " values (?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,aluno.getRa_Aluno());
        stmt.setString(2,aluno.getNome());

        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void exclui(Aluno aluno) throws SQLException{
        String sql = "delete from tbl_aluno WHERE id_aluno = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,aluno.getId_Aluno());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Aluno busca(Aluno aluno) throws SQLException{
        String sql = "select * from tbl_aluno WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_aluno WHERE id_aluno = ?");
        // seta os valores
        stmt.setInt(1,aluno.getId_Aluno());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            // criando o objeto Contato
            aluno.setId_Aluno(rs.getInt("id_aluno")); //Em Aspas o nome do Campo no BD
            aluno.setRa_Aluno(rs.getString("ra_aluno")); //Em Aspas o nome do Campo no BD
            aluno.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
        }
        
        stmt.close();
        return aluno;
    }

    public Aluno altera(Aluno aluno) throws SQLException{
        String sql = "UPDATE tbl_aluno SET id_aluno = ?, ra_aluno = ?, nome = ? WHERE id_aluno = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,aluno.getId_Aluno());
        stmt.setString(2,aluno.getRa_Aluno());
        stmt.setString(3,aluno.getNome());
        stmt.setInt(4,aluno.getId_Aluno());
 
        // executa
        stmt.execute();
        stmt.close();
        return aluno;
    }

    public List<Aluno> lista() throws SQLException{
         // contatos: array armazena a lista de registros

        List<Aluno> alunos = new ArrayList<Aluno>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_aluno");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Contato
            Aluno aluno = new Aluno();
            aluno.setId_Aluno(rs.getInt("id_aluno")); //Em Aspas o nome do Campo no BD
            aluno.setRa_Aluno(rs.getString("ra_aluno")); //Em Aspas o nome do Campo no BD
            aluno.setNome(rs.getString("nome")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
            alunos.add(aluno);
        }
        rs.close();
        stmt.close();
        return alunos;
    }
}
