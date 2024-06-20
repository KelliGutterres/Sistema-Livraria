<%-- 
    Document   : tentfalha
    Created on : 5 de abr. de 2024, 21:56:04
    Author     : kelli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Falha</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
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
            .error-image {
                width: 300px;
                display: block;
                margin: 50px auto;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
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
    
        <div class="container text-center">
            <h1 class="mt-5">Ocorreu uma falha ao realizar a ação!</h1>
            <p class="lead">Houve um erro ao realizar a ação solicitada.Contate o suporte</p>
            <img src="https://compras.wiki.ufsc.br/images/5/56/Erro.png" alt="Erro" class="error-image">
            <a href="listarLivros.jsp" class="btn btn-primary btn-lg">Voltar para Lista de Livros</a>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>

