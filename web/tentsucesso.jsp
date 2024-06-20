<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            body {
                background-color: #f8f9fa;
                padding-top: 60px;
            }
            .navbar-custom {
                background-color: blueviolet;
            }
            .navbar-brand {
                color: #fff;
                font-size: 24px;
            }
            .nav-link {
                color: #fff;
                font-size: 18px;
            }
            .btn-primary {
                background-color: blueviolet;
                border-color: blueviolet;
                font-size: 18px;
            }
            .btn-primary:hover {
                background-color: darkviolet;
                border-color: darkviolet;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">LivroMania</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listarLivros.jsp">Listar Livros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addLivro.jsp">Cadastrar Livros</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <img width="240" height="240" src="https://img.icons8.com/color-glass/240/ok--v1.png" alt="ok--v1"/>
                    <h1 class="display-4 mb-4">Ação realizada com sucesso!</h1>
                    <p class="lead">Sua ação foi realizada com sucesso em nossa plataforma.</p>
                    <a href="listarLivros.jsp" class="btn btn-primary btn-lg">Voltar para Lista de Livros</a>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
