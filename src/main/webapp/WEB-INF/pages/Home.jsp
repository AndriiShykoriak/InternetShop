<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Home</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel="stylesheet" href="/styles/home.css">
</head>
<body id="body">
<div id="home">
    <div id="title"><h1>Internet Shop MACHINERY</h1></div>
<div id="sign_in">
    <sec:authorize access="isAnonymous()">
        <div id="account"> <p>My Account</p></div>
        <div id="login"> <a class="btn btn-info" href="/login" role="button">Sign In</a></div>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <div id="user"><p>Dear,${user}</p></div>
        <div id="logout"><a class="btn btn-info" href="/logout" role="button">Logout</a></div>
    </sec:authorize>
</div>
</div>
</body>
</html>
