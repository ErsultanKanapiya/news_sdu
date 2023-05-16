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
    <div class="">
        <#list news as new>
            <a href="/news/${new.id}" class="news-link">
                <div class="card text-white bg-dark my-3 product">


<#--                        <img src="/images/${new.getImages()}" class="card-img-top"/><br><br>-->


<#--                    <img src="/images/${img.id}"-->
<#--                         class="card-img-top">-->
                    <div class="card-body">
                        <h5 class="card-title">${new.title}</h5>
                    </div>
                    <div class="card-footer">
                        ${new.author}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</div>




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