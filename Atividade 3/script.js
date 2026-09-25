const botoesComprar = document.querySelectorAll('.btn-comprar');
const mensagemSucesso = document.getElementById('mensagem-sucesso');

botoesComprar.forEach(botao => {
    botao.addEventListener('click', function() {
        mensagemSucesso.classList.remove('escondido');
    
        this.classList.toggle('btn-comprado');
        
        if(this.classList.contains('btn-comprado')) {
            this.textContent = "No Carrinho";
        } else {
            this.textContent = "Comprar";
        }
    });
});


const btnBuscar = document.getElementById('btn-buscar');
const inputBusca = document.getElementById('input-busca');
const cards = document.querySelectorAll('.card');

btnBuscar.addEventListener('click', () => {
    const termoBusca = inputBusca.value.toLowerCase();

    cards.forEach(card => {
        const nomeProduto = card.querySelector('.nome-produto').textContent.toLowerCase();
        if (nomeProduto.includes(termoBusca)) {
            card.classList.remove('escondido');
        } else {
            card.classList.add('escondido');
        }
    });
});


const formContato = document.getElementById('form-contato');

formContato.addEventListener('submit', function(evento) {
    evento.preventDefault();

    let formularioValido = true;

    function validarCampo(idCampo, idErro) {
        const campo = document.getElementById(idCampo);
        const erroMsg = document.getElementById(idErro);

        if (campo.value.trim() === '') {
            erroMsg.classList.remove('escondido'); 
            campo.classList.add('input-erro');  
            formularioValido = false;
        } else {
            erroMsg.classList.add('escondido');  
            campo.classList.remove('input-erro'); 
        }
    }

    validarCampo('nome', 'erro-nome');
    validarCampo('email', 'erro-email');
    validarCampo('mensagem', 'erro-mensagem');

    if (formularioValido) {
        alert("Formulário enviado com sucesso!");
        formContato.reset();
    }
});