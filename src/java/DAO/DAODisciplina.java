
package DAO;
import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DAODisciplina {
    private Connection cnt;
    private PreparedStatement prep;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Disciplina> lista = new ArrayList<>();
    
    public DAODisciplina(){
        cnt = new Conexao().getConexao();
}
    public void inserirDisciplina(Disciplina disciplina){ //deu certo aqui
        String sql = "INSERT INTO tb_disciplina (nome_disciplina,cargahoraria_disciplina) VALUES (?,?)";
        try{
            prep = cnt.prepareStatement(sql);
            prep.setString(1, disciplina.getNome_disc());
            prep.setInt(2, disciplina.getCarga_horaria_disc());
            prep.execute();
            prep.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro método inserir disciplina"+erro);
            
        }
    }
    public void excluirDisciplina(int delete){
        try{
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina ="+delete;
            st = cnt.createStatement();
            st.execute(sql);
            st.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro método excluir"+erro);
        }
    }
    public ArrayList<Disciplina> listarDisciplina(){
        String sql = "SELECT * FROM tb_disciplina";
        
        try{
            st = cnt.createStatement();
            rs = st.executeQuery(sql);
            
          while(rs.next()){
              Disciplina disciplina = new Disciplina();
              disciplina.setId_disciplina(rs.getInt("id_disciplina"));
              disciplina.setNome_disc(rs.getString("nome_disciplina"));
              disciplina.setCarga_horaria_disc(rs.getInt("cargahoraria_disciplina"));
              lista.add(disciplina);
              
          }
        }catch(Exception erro){
            throw new RuntimeException ("Erro método listar disciplina"+erro);
            
        }
        return lista;
    }
    public ArrayList<Disciplina> listarDisciplinaNome(String disc){
        String sql = "SELECT id_disciplina, nome_disciplina, cargahoraria_disciplina FROM tb_disciplina WHERE nome_disciplina LIKE '%" + disc+"%'";
        
        try{
          st = cnt.createStatement();
          rs = st.executeQuery(sql);
          while(rs.next()){
              Disciplina disciplina = new Disciplina();
              disciplina.setId_disciplina(rs.getInt("id_disciplina"));
              disciplina.setNome_disc(rs.getString("nome_disciplina"));
              disciplina.setCarga_horaria_disc(rs.getInt("cargahoraria_disciplina"));
              lista.add(disciplina);
          }
          
        }catch(Exception erro){
            throw new RuntimeException ("Erro método listar disciplina"+erro);
            
        }
        return lista;
    }
    public void atualizarDisciplina(Disciplina disciplina) throws SQLException{
        try{
         String sql = "UPDATE tb_disciplina SET nome_disciplina=?, cargahoraria_disciplina=?" + "WHERE id_disciplina=?";
         prep = cnt.prepareStatement(sql);
         prep.setString(1, disciplina.getNome_disc());
         prep.setInt(2,disciplina.getCarga_horaria_disc());
         prep.setInt(3, disciplina.getId_disciplina());
         prep.execute();
         prep.close();
         
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo atualizar"+erro);
        }
        
    }
    
}

