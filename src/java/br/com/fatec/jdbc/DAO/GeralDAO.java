/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatec.jdbc.DAO;

import br.com.fatec.jdbc.ConnectionFactory;

import br.com.fatec.jdbc.modelo.Geral;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GeralDAO {

    private Connection c;

    public GeralDAO() throws SQLException, ClassNotFoundException {
        this.c = new ConnectionFactory().getConnection();
    }

    public List<Geral> lista() throws SQLException {
        // contatos: array armazena a lista de registros

        List<Geral> gerall = new ArrayList<Geral>();

        PreparedStatement stmt = this.c.prepareStatement("SELECT id_notas, nota1, nota2, trabalho, tbl_aluno.nome, tbl_professor.nome, tbl_disciplina.nome\n"
                + "FROM tbl_notas\n"
                + "INNER JOIN tbl_aluno\n"
                + "ON tbl_notas.id_aluno = tbl_aluno.id_aluno\n"
                + "INNER JOIN tbl_professor\n"
                + "ON tbl_notas.id_professor = tbl_professor.id_professor\n"
                + "INNER JOIN tbl_disciplina\n"
                + "ON tbl_notas.id_disciplina = tbl_disciplina.id_disciplina;");
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            // criando o objeto Contato
            Geral geral = new Geral();

            geral.setId_notas(rs.getInt("id_notas")); //Em Aspas o nome do Campo no BD
            geral.setNota1(rs.getInt("nota1")); //Em Aspas o nome do Campo no BD
            geral.setNota2(rs.getInt("nota2")); //Em Aspas o nome do Campo no BD
            geral.setTrabalho(rs.getInt("trabalho")); //Em Aspas o nome do Campo no BD
            geral.setNome_ALUNO(rs.getString("tbl_aluno.nome")); //Em Aspas o nome do Campo no BD
            geral.setNome_PROFESSOR(rs.getString("tbl_professor.nome")); //Em Aspas o nome do Campo no BD
            geral.setNome_DISCIPLINA(rs.getString("tbl_disciplina.nome")); //Em Aspas o nome do Campo no BD

            // adiciona o contato à lista de contatos
            gerall.add(geral);
        }
        rs.close();
        stmt.close();
        return gerall;
    }
}
