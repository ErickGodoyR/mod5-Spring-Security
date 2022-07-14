<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>FINAL MOD5</title>

          <!-- BOOTSTRAP -->
               <link
               	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
               	rel="stylesheet"
               	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
               	crossorigin="anonymous">


           <!--LLAMA FONTAWESOME-->
                   <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>
                   <script src="https://kit.fontawesome.com/81a2ed02b0.js" crossorigin="anonymous"></script>

     <!--   <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">  -->
    </head>

    <body>

   <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
     <div class="container-fluid">
       <a class="navbar-brand" href="#">MOD4</a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
         <ul class="navbar-nav">
           <li class="nav-item dropdown">
             <a class="nav-link dropdown-toggle " href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               OPCION NAVEGACION
             </a>
             <sec:authorize access="hasAnyAuthority('ADMIN')">
             <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
             	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/">Home</a></li>
               <li><a class="dropdown-item" href="${pageContext.request.contextPath}/usuario/nuevoUsuario/">Nuevo Usuario</a></li>
               	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/rol_usuario">Ver Rol-Usuario</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/usuario">Ver Usuarios</a></li>
               <li><a class="dropdown-item" href="${pageContext.request.contextPath}/rol">Ver Roles</a></li>
               <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Salir</a></li>
              </ul>
              </sec:authorize>
              <sec:authorize access="hasAnyAuthority('USER')">
             <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
                   	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/">Home</a></li>
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Salir</a></li>
             </ul>
             </sec:authorize>
          	</li>
          </ul>
       </div>
     </div>
   </nav>


        <br><br><br><br><br>

        <!--
         MENU 1 -->
        <!--<sec:authorize access="isAnonymous()">
          <a href="${pageContext.request.contextPath}/index">Home</a> |
           <a href="${pageContext.request.contextPath}/logout">Salir</a>
           </sec:authorize>
        -->

        <!-- MENU 2 -->
        <!--
        <sec:authorize access="hasAnyAuthority('ADMIN')">
          <a href="${pageContext.request.contextPath}/">Home</a> |
          <a href="${pageContext.request.contextPath}/usuario/nuevoUsuario/">Nuevo Usuario</a> |
          <a href="${pageContext.request.contextPath}/rol_usuario">Ver Rol-Usuario</a> |
           <a href="${pageContext.request.contextPath}/usuario">Ver Usuarios</a> |
           <a href="${pageContext.request.contextPath}/rol">Ver Roles</a> |
          <a href="${pageContext.request.contextPath}/logout">Salir</a>
        </sec:authorize>
        -->

        <!-- MENU 3 -->
          <!--
          <sec:authorize access="hasAnyAuthority('USER')">
          <a href="${pageContext.request.contextPath}/">Home</a> |
          <a href="#">Perfil Usuario</a> |
           <a href="${pageContext.request.contextPath}/logout">Salir</a>
          </sec:authorize>
          -->

    <!-- PARA VER MENU NAVEGACION -->
    <script
    		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
    		crossorigin="anonymous"></script>
    	<script
    		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
    		integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
    		crossorigin="anonymous"></script>
    </body>
</html>
