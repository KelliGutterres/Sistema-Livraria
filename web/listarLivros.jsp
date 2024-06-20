<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Livro"%>
<%@page import="dao.LivroDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Listagem de Livros</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="JS/deletar.js"></script>
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
            
            <div class="row align-items-center">
                <div class="col-auto">
                    <img width="96" height="96" src="https://img.icons8.com/fluency/96/search-in-list--v1.png" alt="search-in-list--v1"/>
                </div>
                <div class="col">
                    <h1 class="mt-5 mb-4">Listagem de Livros</h1>
                </div>
            </div>
         
            <table class="table table-bordered rounded" style="background-color: #6A5ACD;">
                <thead>
                    <tr class="purple-bg">
                        <th>Id</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Gênero</th>
                        <th>Descrição</th>
                        <th>Status</th>
                        <th>Editar</th>
                        <th>Deletar</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Livro> livros = LivroDao.lerTudo(); %>
                    <% for (Livro livro : livros) { %>
                        <tr>
                            <td><%= livro.getId_livro() %></td>
                            <td><%= livro.getTitulo() %></td>
                            <td><%= livro.getAutor() %></td>
                            <td><%= livro.getGenero() %></td>
                            <td><%= livro.getDescricao() %></td>
                            <td><%= livro.getStatus() %></td>
                            <td> 
                                <input type="hidden" name="id_livro" id="hiddenField" value="${livro.getId_livro()}"/>
                                <a href="subEditarLivro.jsp">
                                    <button type="submit" class="btn btn-link">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                </a>
                            </td>
                            <td>
                                <a href="deletarLivro.jsp">
                                    <button type="button" class="btn btn-link">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
