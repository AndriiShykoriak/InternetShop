<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel='stylesheet' href='/styles/bootstrap.min.css'>
    <link rel="stylesheet" href="/styles/registration.css">
</head>
<body>
<div>
    <form action="save" method="post">
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
            <button type="submit" class="btn btn-primary">save</button>
        </div>
        <div><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></div>
    </form>
</div>
</body>
</html>
