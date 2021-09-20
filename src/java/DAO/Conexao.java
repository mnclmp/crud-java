/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    public Connection getConexao(){
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        return DriverManager.getConnection("jdbc:derby://localhost/BDAvaliacao","root","1234");
    }catch(Exception erro){
        throw new RuntimeException("Erro conexao"+erro);
    }   
    
}}
