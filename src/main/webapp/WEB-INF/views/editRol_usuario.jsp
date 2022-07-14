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

    <h2>Editar ${rol_usuario.getUsername()}</h2>

<div class="container-fluid">

	<main>
	  <form class="form" name="rol_usuario" action="${pageContext.request.contextPath}/rol_usuario/edit/" method="post">
            <input type="hidden" name="id" id="id" value="${rol_usuario.getId()}">

			<div class="row mt-4">
    			<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                     <label for="idrol" class="form-label">Idrol (1 ADMIN/ 2 USER)</label>
                     <input type="text" class="form-control" id="idrol" name="idrol" placeholder="idrol" value="${rol_usuario.getIdrol()}" required>
    			</div>
    			<div class="col align-self-center col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
      	             <label for="username" class="form-label">Username (repetir Username)</label>
                     <input type="text" class="form-control" id="username" name="username" placeholder="nombre de usuario" value="${rol_usuario.getUsername()}" required>
    			</div>
   			 	<div class="col align-self-end col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
      		        <label for="habilitado" class="form-label">Habilitado (true/false)</label>
                    <input type="text" class="form-control" id="habilitado" name="habilitado" placeholder="habilitado" value="${rol_usuario.getHabilitado()}" required>
               </div>
  			</div>

  		    <div class="row mt-4">
  				<div class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                     <button class="btn btn-primary" type="submit" id="guardar">Guardar</button>
                     <button type="reset" class="btn btn-secondary" id="limpiar">Limpiar</button>
    			</div>
    			<div class="col align-self-center">

    			</div>
    			<div class="col align-self-end">

    			</div>
			</div>

		</form>
		</main>
	</div>




    </body>
</html>


