<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="application/vnd.ms-excel" %>
<%
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Disposition", "attachment;filename=" + nombreArchivo);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>MJVC</title>
    </head>
    <body>
        <h1>Reporte de Excel</h1>
        <br/>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Cumpleaños</th>
                <th>Grupo</th>
                <th>Email</th>
                <th>WhatsApp</th>
                <th>WhatsApp de apoyo</th>
                <th>Enfermedades y Alergias</th>
                <th>Saldo</th>
            </tr>
            <!-- Iteramos cada elemento de la lista de clientes -->
            <c:forEach var="cliente" items="${envioAexcel}" varStatus="status">
                <tr>                                           
                    <td>${cliente.nombre} ${cliente.apellido}</td>
                    <td>${cliente.edad}</td>
                    <td>${cliente.cumpleaños}</td>
                    <td>${cliente.grupo}</td>
                    <td>${cliente.email}</td>
                    <td>${cliente.telefono}</td>
                    <td>${cliente.telefonoApoyo}</td>
                    <td>${cliente.enfermedades}</td>
                    <td>${cliente.saldo}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

