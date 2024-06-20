<%-- 
    Document   : editarLivro
    Created on : 6 de abr. de 2024, 17:32:36
    Author     : kelli
--%>

<%@page import="model.Livro"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <title>Editar Livro</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="shortcut icon" href="imagens/phone.png"/>
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
            <h1 class="mt-4 mb-4">Editar Contato</h1>
            <form action="editaLivrobd" method="post" onsubmit="return validarEdicao()">
                <table class="table">
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="id_livro" value="${livro.id_livro}" min="0" class="form-control" readonly/></td>
                    </tr>
                    <tr>
                        <td>Título:</td>
                        <td><input type="text" name="titulo" value="${livro.titulo}" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>Autor:</td>
                        <td><input type="text" name="autor" value="${livro.autor}" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>Descrição:</td>
                        <td><input type="text" name="descricao" value="${livro.descricao}" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>Gênero:</td>
                        <td><input type="text" name="genero" value="${livro.genero}" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td><input type="text" name="status" value="${livro.status}" class="form-control"/></td>
                    </td></tr>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Salvar" class="btn btn-primary"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <script src="JS/CadValidar.js"></script>
    </body>
</html>
