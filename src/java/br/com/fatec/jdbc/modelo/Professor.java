package br.com.fatec.jdbc.modelo;

public class Professor {
    private int id_professor;
    private String rg_professor;
    private String nome;

    public int getId_Professor() {
        return id_professor;
    }
    
    public void setId_Professor(int id_professor) {
        this.id_professor = id_professor;
    }

    public String getRg_Professor() {
        return rg_professor;
    }

    public void setRg_Professor(String rg_professor) {
        this.rg_professor = rg_professor;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
