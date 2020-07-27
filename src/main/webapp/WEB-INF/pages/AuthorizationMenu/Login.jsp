<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
<head>
    <title>Login</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel="stylesheet" href="/styles/login.css">
</head>
<body>
<div>
    <form th:action="/login" method="post">
        <div class="form-group">
            <label for="InputUsername"> Username: </label>
            <input type="text" class="form-control" name="username" aria-describedby="usernameHelp">
            <small id="usernameHelp" class="form-text text-muted">We'll never share your username with anyone
                else.</small>
        </div>
        <div class="form-group">
            <label for="InputPassword">Password</label>
            <input type="password" class="form-control" name="password">
        </div>
        <div id="submit">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>
        <div><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></div>
    </form>
    <div id="registration">
        <a class="btn btn-success" href="/registration" role="button">Registration</a>
    </div>
</div>
</body>
</html>
