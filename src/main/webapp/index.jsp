<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title>Juego del Gran Numero</title>
</head>
<body>	
			
	<h1>Juego del Gran Numero</h1><hr>

	<div style="text-align: center" class="container">
		<h1>Bienvenido al Juego del Gran Numero!!</h1>
		<h3>Ingrese un numero entre 1 y 100</h3>
		<h3>!! Adivina !!</h3><br>

		<form action="Home" method="post">
			<input type="text" name="numero">
			<c:if test="${mensaje=='Felicidades!! Has encontrado el numero'}">
		</form>
		<div class="p-3 mb-2 bg-success text-white mt-2">
					<h3><c:out value="${ingresado}" /></h3>
					<c:out value="${mensaje}" /><br>
					<a href="Logout"><button class="btn btn-primary mt-2">Jugar de nuevo</button></a>
		</div>
		<!-- <a href="Logout"><button>Jugar de nuevo</button></a> -->
		</c:if>

		<c:if test="${mensaje=='es menor'|| mensaje==null}">
			<div class="p-3 mb-2 bg-danger text-white mt-2">
				<c:out value="${ingresado}" />
				<c:out value="${mensaje}" />			
			</div>
		</c:if>
		
		<c:if test="${mensaje=='es mayor'|| mensaje==null}">
			<div class="p-3 mb-2 bg-danger text-white mt-2">
				<c:out value="${ingresado}" />
				<c:out value="${mensaje}" />			
			</div>
		</c:if>	
			<button class="btn btn-primary mt-2" type="submit">Enviar</button>
			</form>
		

	</div>	

<c:out value="${sesion}"/>		
</body>
</html>