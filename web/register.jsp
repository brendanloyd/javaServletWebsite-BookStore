<!--Brendan Loyd
4/21/2022
Homework 5
-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Create Account</h1>
    <p><i>${message}</i></p>
    <p>Create an account to continue to checkout</p>
    <form action="register" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               required><br>
        <label class="pad_top">Password:</label>
        <input type="password" name="password" value="${user.password}" 
               required><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" 
               required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  
               required><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>