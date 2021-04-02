//iniciando jquery
$(function(){
    //abre e fecha menu
    $('.nav-toggle, .nav-close').click(function(e){ //Quando clicar em .nav-toggle (menu) ou .nav-close (x)

        e.preventDefault(); //quando clicar no Menu nao ira redirecionar para nenhum lugar

        $('.nav').toggleClass('active'); // a classe .nav ira alterar para .nav active quando clicada uma vez.
        
        /* -RESUMO
            * Quando clicado no .nav-toggle(MENU) ou .nav-close(X)
            * o .nav ira mudar a classe para '.nav active' 
            * isso ira ter duas ações:
            * 
            *      - Abrir o menu: > foi especificado no style.css que a classe '.nav active' ira mudar seu right
            *                      > para 0, dessa maneira o menu irá aparecer ao clicar em '.nav-toggle'.
            * 
            *      - Fechar o menu: > como a classe '.nav-close' esta contida dentro da classe .nav, toda ação 
            *                       > aplicada a .nav sera aplicada a .nav-close.
            *                       > Dessa maneira, ao clicar no X, '.nav active' irá alterar para .nav e então
            *                       > right voltará a ser -100%, sumindo o menu.

        */
    })

    //FIXAR HEADER
    $(window).scroll(function(){
        if($(this).scrollTop() >100){
            $('.header').addClass('fixed'); //no header adiciona a classe fixed
        }else{
            $('.header').removeClass('fixed'); // no header remove  a classe fixed

        }
        
    });

})