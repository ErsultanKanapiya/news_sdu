<!DOCTYPE html>
<html>
<head>
    <title>News</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/static/css/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-light bg-light justify-content-between">
    <a href="/" class="navbar-brand">SDU NEWS</a>
    <a href="/add" class="navbar-brand">ADD NEWS</a>
    <form action="/" method="get" class="form-inline">
        <input class="form-control mr-sm-2" name="title" type="search" placeholder="Search" aria-label="Search">
        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Search"/>
    </form>
</nav>

<div class="container">
    <p><h1 style="text-align: center">${news.title}</h1></p>
    <p style="text-align: center">${news.description}</p>
    <p style="text-align: center">Имя автора: <b>${news.author}</b></p>

    <hr>
    <form action="/news/delete/${news.id}" method="post">
        <button type="submit" style="width: 100%" class="btn btn-dark">Удалить новость</button>
    </form>

</div>





<#--<h1>NEWS</h1><hr>-->
<#--<h4>Подробная информация о товаре</h4>-->
<#--<#list images as img>-->
<#--    <img src="/images/${img.id}" height="60px"/><br><br>-->
<#--</#list>-->
<#--<b>Название товара: </b>${news.title}<br>-->
<#--<b>Описание товара: </b>${news.description}<br>-->
<#--<b>Автор: </b>${news.author}<br>-->
<#--<hr>-->
<#--<form action="/news/delete/${news.id}" method="post">-->
<#--    <input type="submit" value="Удалить товар"/>-->
<#--</form>-->
</body>
</html>