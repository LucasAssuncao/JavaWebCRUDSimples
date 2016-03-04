package br.com.fatec.jdbc.modelo;

public class Geral {
    //NOTAS
    private int id_notas;
    private int nota1;
    private int nota2;
    private int trabalho;
    private int id_aluno_NOTAS;
    private int id_professor_NOTAS;
    private int id_disciplina_NOTAS;

    //ALUNO        
    private int id_aluno;
    private String ra_aluno;
    private String nome_ALUNO;
  
    //PROFESSOR
    private int id_professor;
    private String rg_professor;
    private String nome_PROFESSOR;    

    //DISCIPLINA
    private int id_disciplina;
    private String nome_DISCIPLINA;

    public int getId_notas() {
        return id_notas;
    }

    public void setId_notas(int id_notas) {
        this.id_notas = id_notas;
    }

    public int getNota1() {
        return nota1;
    }

    public void setNota1(int nota1) {
        this.nota1 = nota1;
    }

    public int getNota2() {
        return nota2;
    }

    public void setNota2(int nota2) {
        this.nota2 = nota2;
    }

    public int getTrabalho() {
        return trabalho;
    }

    public void setTrabalho(int trabalho) {
        this.trabalho = trabalho;
    }

    public int getId_aluno_NOTAS() {
        return id_aluno_NOTAS;
    }

    public void setId_aluno_NOTAS(int id_aluno_NOTAS) {
        this.id_aluno_NOTAS = id_aluno_NOTAS;
    }

    public int getId_professor_NOTAS() {
        return id_professor_NOTAS;
    }

    public void setId_professor_NOTAS(int id_professor_NOTAS) {
        this.id_professor_NOTAS = id_professor_NOTAS;
    }

    public int getId_disciplina_NOTAS() {
        return id_disciplina_NOTAS;
    }

    public void setId_disciplina_NOTAS(int id_disciplina_NOTAS) {
        this.id_disciplina_NOTAS = id_disciplina_NOTAS;
    }

    public int getId_aluno() {
        return id_aluno;
    }

    public void setId_aluno(int id_aluno) {
        this.id_aluno = id_aluno;
    }

    public String getRa_aluno() {
        return ra_aluno;
    }

    public void setRa_aluno(String ra_aluno) {
        this.ra_aluno = ra_aluno;
    }

    public String getNome_ALUNO() {
        return nome_ALUNO;
    }

    public void setNome_ALUNO(String nome_ALUNO) {
        this.nome_ALUNO = nome_ALUNO;
    }

    public int getId_professor() {
        return id_professor;
    }

    public void setId_professor(int id_professor) {
        this.id_professor = id_professor;
    }

    public String getRg_professor() {
        return rg_professor;
    }

    public void setRg_professor(String rg_professor) {
        this.rg_professor = rg_professor;
    }

    public String getNome_PROFESSOR() {
        return nome_PROFESSOR;
    }

    public void setNome_PROFESSOR(String nome_PROFESSOR) {
        this.nome_PROFESSOR = nome_PROFESSOR;
    }

    public int getId_disciplina() {
        return id_disciplina;
    }

    public void setId_disciplina(int id_disciplina) {
        this.id_disciplina = id_disciplina;
    }

    public String getNome_DISCIPLINA() {
        return nome_DISCIPLINA;
    }

    public void setNome_DISCIPLINA(String nome_DISCIPLINA) {
        this.nome_DISCIPLINA = nome_DISCIPLINA;
    }

}