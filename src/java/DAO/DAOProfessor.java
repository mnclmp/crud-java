/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
/**
 *
 * @author or_mo
 */
public class DAOProfessor {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Professor> lista = new ArrayList<>();
    
    
    public DAOProfessor(){
        conn = new Conexao().getConexao();   
    } //deu certo, graças a deus
    public void inserirProfessor(Professor professor){
        String sql = "INSERT INTO tb_professor (nome_professor,email_professor,senha_professor) VALUES (?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, professor.getNome_professor());
            stmt.setString(2, professor.getEmail_professor());
            stmt.setString(3, professor.getSenha_professor());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException ("Erro ao inserir professor"+erro);
        }        
    }
    public ArrayList<Professor> listarProfessor(){
        String sql = "SELECT * FROM tb_professor";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
               Professor professor = new Professor();
               professor.setId_prof(rs.getInt("id_professor"));
               professor.setNome_professor(rs.getString("nome_professor"));
               professor.setEmail_professor(rs.getString("email_professor"));
               professor.setSenha_professor(rs.getString("senha_professor"));
               lista.add(professor);
            }
            
        }catch(Exception erro){
            throw new RuntimeException("Erro listar professor"+erro);
        }
        return lista;
    } 
    //consultando professor por nome, havia esquecido kkk
    public ArrayList<Professor> listarProfessorNome (String nome_professor){
        String sql = "SELECT * FROM tb_professor WHERE nome_professor LIKE '%"+nome_professor+"%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
               Professor professor = new Professor();
               professor.setId_prof(rs.getInt("id_professor"));
               professor.setNome_professor(rs.getString("nome_professor"));
               professor.setEmail_professor(rs.getString("email_professor"));
               professor.setSenha_professor(rs.getString("senha_professor"));
               lista.add(professor);
            }}catch(Exception erro){
                    throw new RuntimeException("Erro método listar por nome"+erro);
                    }
        return lista;
        }
    
    
    public void atualizarProfessor(Professor professor){
        try{
            String sql = "UPDATE tb_professor SET nome_professor=?, email_professor=?, senha_professor=?" + "WHERE id_professor=?";
            
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, professor.getNome_professor());
            stmt.setString(2, professor.getEmail_professor());
            stmt.setString(3, professor.getSenha_professor());
            stmt.setInt(4, professor.getId_prof());
            stmt.execute();
            stmt.close();

        }catch(Exception erro){
            throw new RuntimeException("Erro ao inserir professor"+erro);
        }
        
    }
    public void excluirProfessor(int delete){
        try{
            String sql = "DELETE FROM tb_professor WHERE id_professor ="+delete;
            st = conn.createStatement();
            st.execute(sql);
            st.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro método excluir professor"+erro);
}
    }
}
