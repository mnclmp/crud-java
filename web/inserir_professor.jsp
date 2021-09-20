<%-- 
    Document   : inserir_professor
    Created on : 15/09/2021, 10:45:01
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

<%
    Professor pro = new Professor();
    DAOProfessor dof = new DAOProfessor();
    
try{
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
    if(nome.equals(null) || email.equals(null)){
        
    }else{
        pro.setNome_professor(nome);
        pro.setEmail_professor(email);
        pro.setSenha_professor(senha);
        dof.inserirProfessor(pro);
        response.sendRedirect("novo_professor.jsp");
        
    }
    
}catch(Exception erro){
    throw new RuntimeException ("Erro metodo inserir"+erro);
}
    
    %>

