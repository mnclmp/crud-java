<%-- 
    Document   : inserir_disciplina
    Created on : 15/09/2021, 13:22:17
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

<%
    Disciplina dis = new Disciplina();
    DAODisciplina ddp = new DAODisciplina();
  try{
      String disciplina = request.getParameter("disciplina");
      String carga = request.getParameter("carga");
      
      if(disciplina.equals(null) || carga.equals(null)){
        
    }else{
        dis.setNome_disc(disciplina);
        dis.setCarga_horaria_disc(Integer.parseInt(carga));//converte, senão vai dar erro...
        ddp.inserirDisciplina(dis);
        response.sendRedirect("nova_disciplina.jsp");
  }}catch(Exception erro){
   throw new RuntimeException ("Erro metodo inserir disciplina"+erro);
  }
    %>
