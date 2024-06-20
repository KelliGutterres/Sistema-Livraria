function validarForm() {
   
    var titulo = document.getElementById('titulo').value;
    var autor = document.getElementById('autor').value;
    var descricao = document.getElementById('descricao').value;
    var genero = document.getElementById('genero').value;
    var status = document.querySelector('input[name="status"]:checked');

   
    if (titulo === '' || autor === '' || descricao === '' || genero === '' || !status) {
       
        alert('Por favor, preencha todos os campos.');
        return false;
    }
    
    return true;
}