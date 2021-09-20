<%-- 
    Document   : nova_disciplina
    Created on : 15/09/2021, 13:16:08
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
       <h1>Cadastro de nova disciplina</h1>
        <form action="inserir_disciplina.jsp" method="post"/>
        <label for="disciplina">DISCIPLINA</label><br>
        <input type="text" name="disciplina" required/><br>
        <label for="carga">CARGA HORÁRIA</label><br>
        <input type="text" name="carga" required/><br>
        <input type="submit" value="CADASTRAR"/><br>
    </form>
       <h3><a href="index.jsp">Início</a></h3>
       
    </body>
</html>
