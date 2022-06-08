<%--
  Created by IntelliJ IDEA.
  User: MY PC
  Date: 08/06/2022
  Time: 9:39 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<form method="post">
  <input type="text" name="name" placeholder="Nhập tên cần tìm">
  <input type="hidden" name="action" value="search">
  <input type="submit" value="tìm kiếm">
</form>
<form method="post">
  <input type="number" name="start" placeholder="Nhập giá bắt đầu">
  <input type="number" name="end" placeholder="Nhập giá kết thúc">
  <input type="hidden" name="action" value="searchByPrice">
  <input type="submit" value="tìm kiếm">
</form>
<p>Danh sach san pham</p>
<c:forEach var="ds" items="${products}">
  <h3>${ds.name}, ${ds.price}, ${ds.quantity}</h3>
</c:forEach>
<p>Danh sach san pham khuyen mai</p>
<c:forEach var="ds" items="${products}">
  <c:if test="${ds.price > 200}">
    <h3>${ds.name}: Khuyen mai 10%</h3>
  </c:if>
  <c:if test="${ds.price < 200}" >
    <h3>${ds.name}: Khuyen mai 20%</h3>
  </c:if>
</c:forEach>
</body>
</html>
