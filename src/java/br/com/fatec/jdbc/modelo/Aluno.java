package br.com.fatec.jdbc.modelo;

public class Aluno {
    private int id_aluno;
    private String ra_aluno;
    private String nome;

    public int getId_Aluno() {
        return id_aluno;
    }
    
    public void setId_Aluno(int id_aluno) {
        this.id_aluno = id_aluno;
    }

    public String getRa_Aluno() {
        return ra_aluno;
    }

    public void setRa_Aluno(String ra_aluno) {
        this.ra_aluno = ra_aluno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
