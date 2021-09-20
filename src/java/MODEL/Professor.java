/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author or_mo
 */
public class Professor {
    private int id_prof;
    private String nome_professor;
    private String email_professor;
    private String senha_professor;

    public int getId_prof() {
        return id_prof;
    }

    public void setId_prof(int id_prof) {
        this.id_prof = id_prof;
    }

    public String getNome_professor() {
        return nome_professor;
    }

    public void setNome_professor(String nome_professor) {
        this.nome_professor = nome_professor;
    }

    public String getEmail_professor() {
        return email_professor;
    }

    public void setEmail_professor(String email_professor) {
        this.email_professor = email_professor;
    }
    public String getSenha_professor() {
        return senha_professor;
    }

    public void setSenha_professor(String senha_professor) {
        this.senha_professor = senha_professor;
    }
}
