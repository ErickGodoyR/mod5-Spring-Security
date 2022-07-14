<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>FINAL MOD5</title>

<script src="${pageContext.request.contextPath}/res/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="//cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>

     <!--   <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilo.css">  -->

    <%@include file="head.jsp"%>
    </head>

    <body>

    <h2>Lista de Usuarios</h2>


<div class="container-fluid">
    <main>
        <table id="usuarios" class="table col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
            <thead class="table-dark">
            <tr class="col align-self-start col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
                <th>Id</th>
                <th>Username</th>
                <th>Nombre</th>
                <th>Email</th>
                <th>Password</th>
                <th>Acciones</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="u" items="${usuario}">
                <tr>
                    <th><c:out value="${u.getId()}"></c:out></th>
                    <td><c:out value="${u.getUsername()}"></c:out></td>
                    <td><c:out value="${u.getNombre()}"></c:out></td>
                    <td><c:out value="${u.getEmail()}"></c:out></td>
                    <td><c:out value="${u.getPassword()}"></c:out></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/usuario/edit/${u.getId()}"><i
                                class="fa-solid fa-pen-to-square"></i></a>
                        <a href="${pageContext.request.contextPath}/usuario/del/${u.getId()}"><i
                                class="fa-solid fa-trash-can"></i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </main>
 </div>

    <script>
        $(document).ready(function(){
            $("#usuarios").DataTable();
        })
    </script>
    </div>


    </body>
</html>
