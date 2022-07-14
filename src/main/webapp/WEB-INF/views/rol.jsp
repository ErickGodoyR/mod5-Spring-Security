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
        <title>ROL</title>

        <!-- Hojas de Estilo -->
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">-->
    </head>

    <body>

        <h1>Lista de Roles</h1>

<div class="container-fluid">
        <main>
            <table class="table col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                <thead class="table-dark">
                    <tr>
                        <th>Idrol</th>
                        <th>Nombre</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="r" items="${rol}">
                    <tr>
                        <th><c:out value="${r.getIdrol()}"></c:out></th>
                        <td><c:out value="${r.getNombre()}"></c:out></td>
                        <td>
                            <!--
                            <a href="${pageContext.request.contextPath}/rol/edit/${r.getIdrol()}"><i class="fa-solid fa-pen-to-square" ></i></a>
                            <a href="${pageContext.request.contextPath}/rol/del/${r.getIdrol()}"><i class="fa-solid fa-trash-can"></i></a>
                            -->
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </main>
    </div>

    </body>
</html>
