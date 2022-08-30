<!--Brendan Loyd
4/21/2022
Homework 5

This is the jsp page that shows the checkout page.-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<h1 id='title'>Thanks for your order, ${user.firstName}.</h1>
<h2>Here's the information you entered:</h2>

<p><b>Email:</b> ${user.email}</p>
<p><b>First Name:</b> ${user.firstName}</p>
<p><b>Last Name:</b> ${user.lastName}</p>

<table>
  <tr>
    <th>Cover</th>
    <th>Title</th>
    <th>Price</th>
    <th>Amount</th>
    <th>Quantity</th>
  </tr>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
  <tr>
     <td><img src="${item.product.imgPath}" alt="${item.product.title}" width="100"/></td>
    <td><c:out value='${item.product.title}'/></td>
    <td>${item.product.priceCurrencyFormat}</td>
    <td>${item.totalCurrencyFormat}</td>
    <td>${item.quantity}</td>
  </tr>
</c:forEach>
  <tr>
      <td>Total</td>
      <td></td>
      <td></td>
      <td>${cart.total}</td>
      <td></td>
  </tr>
</table>
<p>To order another book, click on the button below.</p>
<form action="ReturnServlet" method="post">
  <input type="hidden" name="action" value="shop">
  <input type="submit" value="Return">
</form>
</body>
</html>