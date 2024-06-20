<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagens/phone.png"/>
        <title>Adicionar Novo Livro</title>
        <script src="JS/editaValidar.js"></script>
        
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

        <div class="container">
            <h1 class="mt-4 mb-4">Cadastrar Novo Livro</h1>
            <div class="row">
                
                <div class="col-md-6 offset-md-3">
                    
                    <form id="livroForm" action="addLivrobd" method="post" onsubmit="validarEdicao()">
                        <div class="mb-3">
                            <label for="titulo" class="form-label"><b>Título:</b></label>
                            <input type="text" class="form-control" id="titulo" name="titulo">
                        </div>
                        <div class="mb-3">
                            <label for="autor" class="form-label"><b>Autor:</b></label>
                            <input type="text" class="form-control" id="autor" name="autor">
                        </div>
                        <div class="mb-3">
                            <label for="descricao" class="form-label"><b>Descrição:</b></label>
                            <input type="text" class="form-control" id="descricao" name="descricao">
                        </div>
                        <div class="mb-3">
                            <label for="genero" class="form-label"><b>Gênero:</b></label>
                            <input type="text" class="form-control" id="genero" name="genero">
                        </div>
                        <div class="mb-3">
                            <label for="status" class="label"><b>Status:</b></label>
                            <input type="radio" name="status" value="D"/> Disponível    
                            <input type="radio" name="status" value="I"/> Indisponível   
                        </div>
                        <button type="submit" class="btn btn-primary">Cadastrar Livro</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
