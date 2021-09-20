<%-- 
    Document   : editar_professor
    Created on : 15/09/2021, 22:37:35
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
         <h1>EDITAR</h1>
        <form action="alterar_professor.jsp" method="post"/>
        <label for="id">ID</label><br>
        <input type="text" name="id" value="<%=request.getParameter("id")%>"/><br>
        <label for="nome">NOME</label><br>
        <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>
        <label for="email">EMAIL</label><br>
        <input type="text" name="email" value="<%=request.getParameter("email")%>"/><br>
        <label for="senha">SENHA</label><br>
        <input type="text" name="senha" value="<%=request.getParameter("senha")%>"/><br>
        <input type="submit" value="ALTERAR"/><br>
        <h3><a href="index.jsp">Início</a></h3>
        
        </form>
    </body>
</html>
