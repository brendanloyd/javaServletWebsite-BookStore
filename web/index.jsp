<!--Brendan Loyd
4/21/2022
Homework 5

This is the jsp page that shows the table from the database.-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1 id='title'>Book List</h1> 

<table>
  <tr>
    <th></th>
    <th>Title</th>
    <th>Price</th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="book" items="${books}">
  <tr>
    <td class="cover-td">
        <img src="${book.coverImage}" alt="${book.title}" width="110"/>
    </td>
    <td>${book.title}</td>
    <td>${book.price}</td>
    <td>
      <form action="cart" method="post">
          <input type="hidden" name="productCode" value="${book.productCode}">
          <input type="submit" value="Add To Cart">
      </form>
    </td>
  </tr>
</c:forEach>
</table>

</body>
</html>