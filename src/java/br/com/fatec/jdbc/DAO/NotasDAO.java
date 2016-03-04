package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;
//import br.com.fatec.jdbc.modelo.Aluno;
import br.com.fatec.jdbc.modelo.Notas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NotasDAO {
    
    private Connection c;
    
    public NotasDAO() throws SQLException, ClassNotFoundException{
        this.c = new ConnectionFactory().getConnection();
    }
    
    public void insere(Notas notas) throws SQLException{
        String sql = "insert into tbl_notas" + " (nota1, nota2, trabalho, id_aluno, id_professor, id_disciplina)" + " values (?,?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setInt(1,notas.getNota1());
        stmt.setInt(2,notas.getNota2());
        stmt.setInt(3,notas.getTrabalho());
        stmt.setInt(4,notas.getId_Aluno());
        stmt.setInt(5,notas.getId_professor());
        stmt.setInt(6,notas.getId_disciplina());

        // executa
        stmt.execute();
        stmt.close();
    }
    
    public void exclui(Notas notas) throws SQLException{
        String sql = "delete from tbl_notas WHERE id_notas = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,notas.getId_notas());
        // executa
        stmt.execute();
        stmt.close();
    }

    public Notas busca(Notas notas) throws SQLException{
        String sql = "select * from tbl_notas WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_notas WHERE id_notas = ?");
        // seta os valores
        stmt.setInt(1,notas.getId_notas());
        // executa
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {      
            // criando o objeto Contato
            notas.setId_notas(rs.getInt("id_notas")); //Em Aspas o nome do Campo no BD
            notas.setNota1(rs.getInt("nota1")); //Em Aspas o nome do Campo no BD
            notas.setNota2(rs.getInt("nota2")); //Em Aspas o nome do Campo no BD
            notas.setTrabalho(rs.getInt("trabalho")); //Em Aspas o nome do Campo no BD
            notas.setId_Aluno(rs.getInt("id_aluno")); //Em Aspas o nome do Campo no BD
            notas.setId_professor(rs.getInt("id_professor")); //Em Aspas o nome do Campo no BD
            notas.setId_disciplina(rs.getInt("id_disciplina")); //Em Aspas o nome do Campo no BD
            // adiciona o contato à lista de contatos
        }
        
        stmt.close();
        return notas;
    }

    public Notas altera(Notas notas) throws SQLException{
        String sql = "UPDATE tbl_notas SET id_notas = ?, nota1 = ?, nota2 = ?, trabalho = ?, id_aluno = ?, id_professor = ?, id_disciplina = ? WHERE id_notas = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,notas.getId_notas());
        stmt.setInt(2,notas.getNota1());
        stmt.setInt(3,notas.getNota2());
        stmt.setInt(4,notas.getTrabalho());
        stmt.setInt(5,notas.getId_Aluno());
        stmt.setInt(6,notas.getId_professor());
        stmt.setInt(7,notas.getId_disciplina());
        stmt.setInt(8,notas.getId_notas());
        
    
 
        // executa
        stmt.execute();
        stmt.close();
        return notas;
    }

    public List<Notas> lista() throws SQLException{
         // contatos: array armazena a lista de registros

        List<Notas> notass = new ArrayList<Notas>();
        
        PreparedStatement stmt = this.c.prepareStatement("select * from tbl_notas");
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Contato
            Notas notas = new Notas();
           
            notas.setId_notas(rs.getInt("id_notas")); //Em Aspas o nome do Campo no BD
            notas.setNota1(rs.getInt("nota1")); //Em Aspas o nome do Campo no BD
            notas.setNota2(rs.getInt("nota2")); //Em Aspas o nome do Campo no BD
            notas.setTrabalho(rs.getInt("trabalho")); //Em Aspas o nome do Campo no BD
            notas.setId_Aluno(rs.getInt("id_aluno")); //Em Aspas o nome do Campo no BD
            notas.setId_professor(rs.getInt("id_professor")); //Em Aspas o nome do Campo no BD
            notas.setId_disciplina(rs.getInt("id_disciplina")); //Em Aspas o nome do Campo no BD
            
            // adiciona o contato à lista de contatos
            notass.add(notas);
        }
        rs.close();
        stmt.close();
        return notass;
    }
}
