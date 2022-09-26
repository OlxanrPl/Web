<html>
<head><title>Department store</title></head>
<body>
<from action = "/service" method="post"
<label>Department<input type="text" name= "department"/></label>
<label>Buyer<input type="text" name= "buyer"/></label>
<input type= "submit" name="Submit"/>
</from>
<c:if test="${department != null}">
<p>${department}</p>
</c:if>
<c:if test="${buyer != null}">
<p>${buyer}</p>
</c:if>
</body>
</html>