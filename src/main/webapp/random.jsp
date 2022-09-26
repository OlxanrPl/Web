<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%
    String header = "Apache Tomcat";
    %>
    <!DOCTYPE html>
<html>
<head><title>Department store</title></head>
<body>
<from method="post" action = "/webapp/random" >
<label>Department<input type="text" name= "department"/></label>
<label>Buyer<input type="text" name= "buyer"/></label>
<input type= "submit" name="Submit"/>
</from>

        <p>Department: <%= request.getParameter("department") %></p>
        <p>Buyer: <%= request.getParameter("buyer") %></p>


<c:if test="${department != null}">
<p>${department}</p>
</c:if>
<c:if test="${buyer != null}">
<p>${buyer}</p>
</c:if>
</body>
</html>