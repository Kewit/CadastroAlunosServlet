<%@page import="model.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Aluno aluno = (Aluno) request.getAttribute("aluno");
%>
<h2> Alterar Aluno:</h2>
<form action="ConfirmarAlteracaoServlet" method="post">
<input type="hidden" name="id" value="<%= aluno.getId()%>" >
Nome:
<input type="text" name="nome" value="<%= aluno.getNome()%>" >
<br><br>
Idade:
<input type="number" name="idade" value="<%= aluno.getIdade()%>" >
<br><br>
Semestre:
<select name="semestre">
<option value="Primeiro" <%= aluno.getSemestre().equals("Primeiro") ? "selected" : "" %> >Primeiro</option>
<option value="Segundo" <%= aluno.getSemestre().equals("Segundo") ? "selected" : "" %> >Segundo </option>
</select>
<br><br>
G�nero:
<input type="radio" name="genero" value="Masculino" <%= aluno.getGenero().equals("Masculino") ? "checked" : "" %>
> Masculino
<input type="radio" name="genero" value="Feminino" <%= aluno.getGenero().equals("Feminino") ? "checked" : "" %>>
Feminino
<br><br>
<input type="submit" value="Confirmar Altera��o">
<input type="button" onclick="javascript:location.href='ListarServlet'" value="Voltar">
</form>
</body>
</html>