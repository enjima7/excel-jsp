<%@page errorPage="/WEB-INF/manejoErrores.jsp" %>
<%@page import="utileria.Conversiones, java.util.Date"%>
<%@page contentType="application/vnd.ms-excel" %>
<%
    String nombreArchivo = "reporte.xls";
    response.setHeader("Content-Disposition", "inline;filename="+ nombreArchivo);
    %>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte de Excel</title>
    </head>
    <body>
        <h1>Resporte de Excel</h1>
        <br>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <td>1. Fundamentos de Java</td>
                <td>APrenderemos a sintaxis basica de java</td>
                <td><%= Conversiones.format(new Date()%></td>
            </tr>
            <tr>
                <td>2. Programacion con Java</td>
                <td>Practica de conceptos de programacion orientada a objetos</td>
                <td><%= Conversiones.format(new Date())%></td>
            </tr>
        </table>
    </body>
</html>
