<%--
  Created by IntelliJ IDEA.
  User: MY PC
  Date: 20/05/2022
  Time: 3:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/students?sort=age">Sap xep theo tuoi</a>
<c:forEach var="st" items="${list}">
    <h2>${st.id}, ${st.name}, ${st.age}</h2>
</c:forEach>

</body>
</html>
