package br.com.fatec.jdbc.modelo;

public class Disciplina {
    private int id_disciplina;
    private String nome;

    public int getId_Disciplina() {
        return id_disciplina;
    }
    
    public void setId_Disciplina(int id_disciplina) {
        this.id_disciplina = id_disciplina;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}