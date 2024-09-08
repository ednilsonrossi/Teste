<%@page import="br.ifsp.dsw1.Dados"%>
<%@page import="br.ifsp.dsw1.Animal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="index.jsp" method="get">
		<label for="especie">Espécie: </label>
		<input type="text" id="especie" name="text_especie" placeholder="Nome do animal" required />
		<br/>
		<label for="patas">Patas: </label>
		<input type="number" id="patas" name="text_patas" placeholder="Quantidade de patas" required />
		<br/>
		<input type="submit" value="Salvar" /> 
	</form>
	
	<%
		var dados = Dados.getInstance();
		String especie = request.getParameter("text_especie");
		String strPatas = request.getParameter("text_patas");
		
		if (especie != null && strPatas != null) {
			int patas;
			try{
				patas = Integer.parseInt(strPatas);
			} catch (NumberFormatException ex) {
				patas = 0;
			}
			
			
			dados.insereAnimal(new Animal(especie, patas));
		}
	
		if (dados.getPatas() >= 0) {
			out.println("<p>Patas: " + dados.getPatas() + "</p>");
		}
	%>
</body>
</html>