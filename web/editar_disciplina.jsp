<%-- 
    Document   : editar_disciplina
    Created on : 16/09/2021, 00:02:45
    Author     : or_mo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR DISCIPLINA</h1>
        <form action="alterar_disciplina.jsp" method="post"/>
        <label for="id">ID</label><br>
        <input type="text" name="id_disciplina" value="<%=request.getParameter("id")%>" readonly/><br>
        <label for="nome_disciplina">NOME</label><br>
        <input type="text" name="nome_disciplina" value="<%=request.getParameter("nome_disciplina")%>"/><br>
        <label for="cargahoraria_disciplina">HORAS</label><br>
        <input type="text" name="cargahoraria_disciplina" value="<%=request.getParameter("cargahoraria_disciplina")%>"/><br>
        <input type="submit" value="ATUALIZAR"/>
        <h3><a href="index.jsp">Início</a></h3>
</html>
