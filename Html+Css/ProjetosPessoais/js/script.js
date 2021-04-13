/* MENU RESPONSIVO*/

$(function(){

        $('.content-menu, .content-nav-close').click(function(e){
            e.preventDefault(); //não dedireciona para nenhum lugar ao clicar

            $('.content-nav').toggleClass('active'); //ira alterar a classe de .content-nav para .content-nav.active
            console.log("Ta funcionando man?");
        })
})