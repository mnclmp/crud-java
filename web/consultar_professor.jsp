<%-- 
    Document   : consultar_professor
    Created on : 15/09/2021, 11:02:35
    Author     : or_mo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Consultar Professores no Banco de Dados</h1></center>
        <form action="consultar_professor.jsp" method="get"/>
        <h2>PESQUISAR</h2>
        <label for="nome">NOME PROFESSOR</label>
        <input type="text" name="nome">
        <input type="submit" value="OK"/>
        <hr/>
    </form>
        <%
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
             out.print("</tr>");
             
             DAOProfessor dof = new DAOProfessor();
             ArrayList<Professor> lista;
             String nome_professor_required = request.getParameter("nome_professor");
             
                if(nome_professor_required == null){
                    lista = dof.listarProfessor(); 
                }else{
                    lista = dof.listarProfessorNome(nome_professor_required); //chamando pelo nome
                }
                for(int i =0;i<lista.size();i++){
                    out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId_prof()+"</td>");
                    out.print("<td>"+lista.get(i).getNome_professor()+"</td>");
                    out.print("<td>"+lista.get(i).getEmail_professor()+"</td>");
                    out.print("<td>"+lista.get(i).getSenha_professor()+"</td>");
                            
                            out.print("<td><a href='editar_professor.jsp?id="
                            + lista.get(i).getId_prof()
                            + "&nome="+lista.get(i).getNome_professor()
                            + "&email="+ lista.get(i).getEmail_professor()
                            + "&senha="+lista.get(i).getSenha_professor()
                            +"'>Editar</a></td>");
                            
                            out.print("<td><a href='excluir_professor.jsp?id="+lista.get(i).getId_prof()+"&nome="+lista.get(i).getNome_professor()+"'>Excluir</a></td>");
                            out.print("</tr>");
                            
                }
                
                out.print("</table>");

            %>
        <h3><a href="index.jsp">Início</a></h3>
    </body>
</html>
