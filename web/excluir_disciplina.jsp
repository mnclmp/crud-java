<%-- 
    Document   : excluir_disciplina
    Created on : 16/09/2021, 00:51:03
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAODisciplina"%>

<%
    try{
        DAODisciplina ddd = new DAODisciplina();
        ddd.excluirDisciplina(Integer.parseInt(request.getParameter("id")));
        
        out.print("Professor excluido!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_disciplina.jsp'>");
        response.sendRedirect("consultar_disciplina.jsp");
    }catch(Exception erro){
        throw new RuntimeException("Erro método excluir"+erro);
    }
        
    %>