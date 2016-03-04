package br.com.fatec.jdbc.testes;

import br.com.fatec.jdbc.DAO.NotasDAO;
import br.com.fatec.jdbc.modelo.Notas;
import java.sql.SQLException;

public class TestaAddNota {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Notas a1 = new Notas();
        a1.setNota1(1);
        a1.setNota2(1);
        a1.setNota2(1);
        a1.setId_Aluno(2);
        a1.setId_professor(2);
        a1.setId_disciplina(1);
        NotasDAO dao = new NotasDAO();
        dao.insere(a1);
    }
}
