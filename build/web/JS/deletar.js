function confirmar(id_Livro) {
    let resposta = confirm(`Deseja excluir o Livro?`);
    if (resposta === true) {
        post('/Desenv_Avalia_01/deletaLivro', {id: id_Livro});
    }
}

function post(path, params, method = 'post') {

    const form = document.createElement('form');
    form.method = method;
    form.action = path;

    for (const key in params) {
        if (params.hasOwnProperty(key)) {
            const hiddenField = document.createElement('input');
            hiddenField.type = 'hidden';
            hiddenField.name = key;
            hiddenField.value = params[key];

            form.appendChild(hiddenField);
        }
    }

    document.body.appendChild(form);
    form.submit();
}


