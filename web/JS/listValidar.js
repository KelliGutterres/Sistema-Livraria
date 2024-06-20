function deletarLivro() {
    var idLivro = document.getElementById("idLivro").value;
    
    // Verificar se o ID do livro é válido
    if (idLivro.trim() === "") {
        alert("Por favor, insira o ID do livro.");
        return;
    }

    // Verificar se o ID do livro é um número inteiro
    if (!Number.isInteger(Number(idLivro))) {
        alert("O ID do livro deve ser um número inteiro.");
        return;
    }

    // Enviar o ID do livro para o controller usando AJAX
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "deletaLivro", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Verificar a resposta do servidor e redirecionar conforme necessário
            var resposta = xhr.responseText;
            if (resposta === "sucesso") {
                window.location.href = "tentsucesso.jsp";
            } else {
                window.location.href = "tentfalha.jsp";
            }
        }
    };
    xhr.send("id_livro=" + idLivro);
}