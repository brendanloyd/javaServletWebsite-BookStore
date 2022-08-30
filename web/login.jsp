<!--Brendan Loyd
4/21/2022
Homework 5

This is the jsp page that shows the login page after clicking checkout.-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<h1>Sign In</h1>
<p><i>${message}</i></p>
<form action="login" method="post">
    <input type="hidden" name="action" value="add">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}" 
           required><br>
    <label class="pad_top">Password:</label>
    <input type="password" name="password" value="${user.password}" 
           required><br>
    <label>&nbsp;</label>
    <input type="hidden" name="action" value="login">
    <input type="submit" value="Sign In" class="margin_left"><br>
<!--    <label>&nbsp;</label>
    <input type="hidden" name="action" value="register">
    <input type="submit" value="Create Account" class="margin_left">-->
</form>
</body>
</html>