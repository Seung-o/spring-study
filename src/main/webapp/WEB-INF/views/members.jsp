<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index.html">  </a>

<table>
  <thead>
  <th>id</th>
  <th>username</th>
  <th>age</th>
  </thead>
  <tbody>
    <c:forEach items="${members}" var="member">
        <tr>
        <td>${member.id}</td>
        <td>${member.username}</td>
        <td>${member.age}</td>
        </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>
