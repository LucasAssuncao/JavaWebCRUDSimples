/*package br.com.fatec.jdbc.testes;

import br.com.fatec.jdbc.DAO.ContatoDAO;
import br.com.fatec.jdbc.modelo.Contato;
import java.sql.SQLException;
import java.util.List;

public class TestaLista {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        ContatoDAO dao = new ContatoDAO();

        List<Contato> contatos = dao.lista() ;

        for (Contato contato : contatos) {
            System.out.println("Id: " + contato.getId());
            System.out.println("Nome: " + contato.getNome());
            System.out.println("Email: " + contato.getEmail());
            System.out.println("Endereço: " + contato.getEndereco());
        }   
    }
}*/