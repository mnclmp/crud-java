<%-- 
    Document   : excluir_professor
    Created on : 15/09/2021, 22:06:57
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOProfessor"%>
<%
    try{
        DAOProfessor dof = new DAOProfessor();
        dof.excluirProfessor(Integer.parseInt(request.getParameter("id")));
        
        out.print("Professor excluido!");
        out.print("<meta http-equiv='refresh' content='3, url=consultar_professor.jsp'>");
        response.sendRedirect("consultar_professor.jsp");
    }catch(Exception erro){
        throw new RuntimeException("Erro método excluir"+erro);
    }
        
    %>