<%-- 
    Document   : consultar_disciplina
    Created on : 15/09/2021, 23:09:57
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consultar Disciplinas no Banco de Dados</h1>
        <form action="consultar_disciplina.jsp" method="get"/>
        <h2>PESQUISAR</h2>
        <label for="nome">NOME DISCIPLINA</label>
        <input type="text" name="nome">
        <input type="submit" value="OK"/>
         <hr/>
    </form>
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>CARGA HORÁRIA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
            out.print("</tr>");
            
            DAODisciplina ddd = new DAODisciplina();
             ArrayList<Disciplina> lista;
             String nome_disciplina_request = request.getParameter("nome_disciplina");
             
             if(nome_disciplina_request == null){
                 lista = ddd.listarDisciplina();
             }else{
                 lista = ddd.listarDisciplinaNome(nome_disciplina_request);
           }
             for(int i =0; i<lista.size();i++){
                 out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId_disciplina()+"</td>");
                    out.print("<td>"+lista.get(i).getNome_disc()+"</td>");
                    out.print("<td>"+lista.get(i).getCarga_horaria_disc()+"</td>");
                   
                out.print("<td><a href='editar_disciplina.jsp?id="
                        + lista.get(i).getId_disciplina()
                        + "&nome_disciplina="+lista.get(i).getNome_disc()
                        + "&cargahoraria_disciplina="+lista.get(i).getCarga_horaria_disc()
                        +"'>Editar</a></td>");
                out.print("<th><a href='excluir_disciplina.jsp?id="+lista.get(i).getId_disciplina()+"&nome_disciplina="+lista.get(i).getNome_disc()+"'>Excluir</a></td>");
                  out.print("</tr>");      
             }
             out.print("</table>");
     %>
     <h3><a href="index.jsp">Início</a></h3>
    </body>
</html>
