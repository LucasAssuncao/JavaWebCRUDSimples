package br.com.fatec.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    public Connection getConnection() throws SQLException, ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url ="jdbc:mysql://mysql04.lucasassuncao.hospedagemdesites.ws:3306/lucasassuncao4";
            String usuario = "lucasassuncao4";
            String senha = "M1e2rovi7sio";
            return DriverManager.getConnection(url,usuario,senha);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
