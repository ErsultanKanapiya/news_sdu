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
    <form action="/" method="get" class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</nav>

<div class="container">
    <div class="container">
        <form action="/news/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="newsName">Тема новостя</label>
                <input type="text" required class="form-control" name="title">
            </div>
            <div class="form-group">
                <label for="description">Описание новостя</label>
                <textarea required class="form-control" id="description" name="description"></textarea>
            </div>
            <div class="form-group">
                <label for="newsAuthor">Имя автора</label>
                <input type="text" required class="form-control" name="author">
            </div>
<#--            <div class="form-group">-->
<#--                <div class="custom-file">-->
<#--                    <label for="file1">Фотография к товару</label>-->
<#--                    <input type="file" name="file1">-->
<#--                </div>-->
<#--            </div>-->
            <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>

<#--<#list news as new>-->
<#--    <div>-->
<#--        <p><b>${new.title}</b> | <a href="/news/${new.id}">Подробнее...</a></p>-->
<#--    </div>-->
<#--<#else>-->
<#--    <h3>Товаров нет</h3>-->
<#--</#list>-->
<#--<hr>-->
<#--<h3>Создать новый товар</h3>-->
<#--<form action="/news/create" method="post" enctype="multipart/form-data">-->
<#--    Название объявления: <input type="text" name="title"/><br><br>-->
<#--    Описание объявления: <input type="text" name="description"/><br><br>-->
<#--    Имя: <input type="text" name="author"/><br><br>-->
<#--    Первая фотография: <input type="file" name="file1"/><br><br>-->
<#--    <input type="submit" value="Добавить новость"/>-->
<#--</form>-->
</body>
</html>