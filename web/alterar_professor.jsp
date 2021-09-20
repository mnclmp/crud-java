<%-- 
    Document   : alterar_professor
    Created on : 15/09/2021, 21:23:06
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%
    try{
        Professor pro = new Professor();
        DAOProfessor dof = new DAOProfessor();
        
        pro.setId_prof(Integer.parseInt(request.getParameter("id")));
        pro.setNome_professor(request.getParameter("nome"));
        pro.setEmail_professor(request.getParameter("email"));
        pro.setSenha_professor(request.getParameter("senha"));
        dof.atualizarProfessor(pro);
        response.sendRedirect("consultar_professor.jsp");
        
        
    }catch(Exception erro){
        throw new RuntimeException ("Erro método atualizar professor"+erro);
    }
%>
