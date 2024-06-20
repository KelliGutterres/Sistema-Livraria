<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Livro"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Deletar Livro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="JS/listValidar.js"></script>
        <script src="JS/editaValidar.js"></script>
        
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
            }
            .container {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }
            label {
                font-weight: bold;
                color: #495057;
            }
            input[type="text"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin-top: 5px;
                margin-bottom: 15px;
                border: 1px solid #ced4da;
                border-radius: 5px;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #007bff;
                color: #ffffff;
                padding: 10px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                width: calc(100% - 20px);
            }
            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
       
        <div class="container mt-5">
 
            <h2 class="mb-4">Deletar Livro</h2>
            
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong>Atenção!</strong> Ao realizar a ação, o livro será deletado permenentemente.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            
            <form action="deletaLivro" method="post" onsubmit="validarEdicao()">
                
                <div class="form-group">
                    <img width="100" height="100" src="https://img.icons8.com/avantgarde/100/full-trash.png" alt="full-trash"/>
                    <label for="idLivro">ID do Livro:</label>
                    <input type="text" id="idLivro" name="id_livro" class="form-control" value="${livro.id_livro}">
                </div>
                <div class="row">
                    <div class="col">
                        <input type="submit" value="Deletar Livro" class="btn btn-primary btn-block">
                    </div>
                    <div class="col-auto">
                        <a href="listarLivros.jsp" class="btn btn-danger btn-block">Cancelar</a>
                    </div>
                </div>
            </form> 
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
