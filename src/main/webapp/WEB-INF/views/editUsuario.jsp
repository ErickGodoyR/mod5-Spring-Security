<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="head.jsp"%>

<!DOCTYPE html>
<html>
    <!-- Cabecera -->
    <head>
        <!-- Cofigicación de caracteres -->
        <meta charset="UTF-8">

        <!-- Configuración de ancho y escala inicial para los dispositivos -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Título de la página -->
        <title>ROL-USUARIO</title>

        <!-- Hojas de Estilo -->
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">-->
    </head>

    <body>

    <h2>Editar ${usuario.getUsername()}</h2>

    <!--
    <a href="${pageContext.request.contextPath}/rol_usuario/editRol_usuario/"
                			class="btn btn-primary mb-3">Agregar Rol Usuario</a>
    -->


<div class="container-fluid">
    <main>
      <form class="form" name="usuario" action="${pageContext.request.contextPath}/usuario/edit/" method="post">
        <input type="hidden" name="id" id="id" value="${usuario.getId()}">

			<div class="row mt-4">
    			<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                   <label for="username" class="form-label">Username</label>
                   <input type="text" class="form-control" id="username" name="username" placeholder="nombre de usuario" value="${usuario.getUsername()}">
    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                  <label for="nombre" class="form-label">Nombre</label>
                  <input type="text" class="form-control" id="nombre" name="nombre" placeholder="nombre" value="${usuario.getNombre()}">
    			</div>
   			 	<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                   <label for="email" class="form-label">Email</label>
                   <input type="email" class="form-control" id="email" name="email" placeholder="email" value="${usuario.getEmail()}">
    			</div>
  			</div>

  		    <div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                     <label for="password" class="form-label">Password</label>
                     <input type="text" class="form-control" id="password" name="password" placeholder="password" value="${usuario.getPassword()}">
    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

			<div class="row mt-4">
  				<div class="col align-self-start">

    			</div>
    			<div class="col align-self-center">
                    <button class="btn btn-primary" type="submit" id="guardar">Guardar</button>
                    <button type="reset" class="btn btn-secondary" id="limpiar">Limpiar</button>
    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

		</form>
      </main>
</div>
    </body>
</html>




<!--
<div class="container-fluid">
		<h1 class="text-sm-center text-md-center text-lg-center text-xl-center fs-3 text-decoration-underline">Ingresar/Actualizar Curso</h1>

		<form class="card border-info" action="${pageContext.request.contextPath}/AgregarCursoServlet" method="post">
			<input type="hidden" name="id" id="id" value="${curso.getId()}">

			<div class="row mt-4">
    			<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">

    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">

    			</div>
   			 	<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">

    			</div>
  			</div>


  		    <div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">

    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

			<div class="row mt-4">
  				<div class="col align-self-start">

    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

		</form>
	</div>

	-->
