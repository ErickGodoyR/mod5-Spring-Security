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

        <h1>Rol-Usuarios</h1>


<div class="container-fluid">
        <main>
            <table id="rolUsuarios" class="table col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Idrol</th>
                        <th>Username</th>
                        <th>Habilitado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="ru" items="${rol_usuario}">
                    <tr>
                        <th><c:out value="${ru.getId()}"></c:out></th>
                        <th><c:out value="${ru.getIdrol()}"></c:out></th>
                        <td><c:out value="${ru.getUsername()}"></c:out></td>
                        <td><c:out value="${ru.getHabilitado()}"></c:out></td>
                        <td>
                            <a href="${pageContext.request.contextPath}/rol_usuario/edit/${ru.getId()}"><i class="fa-solid fa-pen-to-square"></i></a>
                            <a href="${pageContext.request.contextPath}/rol_usuario/del/${ru.getId()}"><i class="fa-solid fa-trash-can"></i></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </main>
    </div>

    <script>
        $(document).ready(function(){
            $("#rolUsuarios").DataTable();
        })
    </script>

    </body>
</html>
