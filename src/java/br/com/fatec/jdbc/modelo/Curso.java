package br.com.fatec.jdbc.modelo;

public class Curso {
    private int id_curso;
    private String nome;

    public int getId_Curso() {
        return id_curso;
    }
    
    public void setId_Curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}