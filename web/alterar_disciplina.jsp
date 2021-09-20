<%-- 
    Document   : alterar_disciplina
    Created on : 16/09/2021, 00:18:21
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%
    try{
        Disciplina dis = new Disciplina();
        DAODisciplina dod = new DAODisciplina();
        
        dis.setId_disciplina(Integer.parseInt(request.getParameter("id_disciplina")));
        dis.setNome_disc(request.getParameter("nome_disciplina"));
        dis.setCarga_horaria_disc(Integer.parseInt(request.getParameter("cargahoraria_disciplina")));
        dod.atualizarDisciplina(dis);
        response.sendRedirect("consultar_disciplina.jsp");
        
    }catch(Exception erro){
        throw new RuntimeException ("Erro metodo atualizar disciplina"+erro);
    }
    %>