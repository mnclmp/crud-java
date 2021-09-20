<%-- 
    Document   : novo_professor
    Created on : 15/09/2021, 10:42:56
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
        <h1>Cadastro de novo professor</h1>
        <form action="inserir_professor.jsp" method="post"/>
        <label for="nome">NOME</label><br>
        <input type="text" name="nome" required/><br>
        <label for="email">EMAIL</label><br>
        <input type="text" name="email" required/><br>
        <label for="senha">SENHA</label><br>
        <input type="text" name="senha" required/><br>
        <input type="submit" value="CADASTRAR"/><br>
        
        </form>
        <h3><a href="index.jsp">Início</a></h3>
    </body>
</html>
