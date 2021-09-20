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
public class Disciplina {
    private int id_disciplina;
    private String nome_disc;
    private int carga_horaria_disc;

    public int getId_disciplina() {
        return id_disciplina;
    }

    public void setId_disciplina(int id_disciplina) {
        this.id_disciplina = id_disciplina;
    }

    public String getNome_disc() {
        return nome_disc;
    }

    public void setNome_disc(String nome_disc) {
        this.nome_disc = nome_disc;
    }

    public int getCarga_horaria_disc() {
        return carga_horaria_disc;
    }

    public void setCarga_horaria_disc(int carga_horaria_disc) {
        this.carga_horaria_disc = carga_horaria_disc;
    }
    
}
