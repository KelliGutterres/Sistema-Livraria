function validarEdicao() {
    
    var campos = document.querySelectorAll('input[type="text"]');

    for (var i = 0; i < campos.length; i++) {
        
        if (campos[i].value.trim() === "" || campos[i].value.trim() === ''){
            alert('Por favor, preencha todos os campos.');
            return false;
        }
    }
    return true;
}



