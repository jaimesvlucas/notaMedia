<%-- 
    Document   : notas.jsp
    Created on : 15-ene-2021, 21:03:50
    Author     : DAW-B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String nombre=request.getParameter("nombre");
           float nota1= Float.parseFloat(request.getParameter("num1"));
           float nota2= Float.parseFloat(request.getParameter("num2"));
           float nota3= Float.parseFloat(request.getParameter("num3"));
           float media = (nota1+nota2+nota3)/3;
           if(media>=5){
        %>
        <p style="color:green">La nota media de <%= nombre%> es <%=media%></p>
        <% }else{%>
        <p style="color:red">La nota media de <%= nombre%> es <%=media%></p>
        <%}%>
        <a href="index.jsp">Volver al index</a>
    </body>
</html>
