<%--  Created by IntelliJ IDEA.  User: Влад Храмых  Date: 30.01.2019  Time: 18:46  To change this template use File | Settings | File Templates.--%><%@ page contentType="text/html;charset=UTF-8" language="java" %><html>    <head>        <title>Добавление пользователя</title>        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>    </head>    <body>        <div>            <h1>Добавление пользователя</h1>        </div>        <%            if(request.getAttribute("userNames") != null) {                out.println("<p>Пользователь " + request.getAttribute("userNames") + " добавлен!</p>");            }        %>        <form method="post">            <label>Имя:                <input type="text" name="name"><br/>            </label>            <label>Пароль:                <input type="password" maxlength="25" name="password" ><br/>            </label>            <button type="submit">Продолжить</button>        </form>    <br>    <button onclick="location.href='/'" >На главную</button>    </body></html>