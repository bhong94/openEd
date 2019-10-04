$(document).ready(function(){
    //change navbar color on scroll
    // $(window).scroll(function(){
    //     var scroll = $(window).scrollTop();
    //     if(scroll < 600){
    //         $('.fixed-top').css('background', 'transparent');
    //     } else{
    //         $('.fixed-top').css('background', 'rgba(0, 0, 0, 0.6)');
    //     }
    // });
    let collapseOpen = false;
    const sections = ['#home', '#services'];
    $(window).on('scroll load', function(){
        var sect = $('.active').attr('href');
        var visible = $('.collapse').is(':visible');
        if(sections.includes(sect) && !visible)
        {
            $('.fixed-top').css('background', 'rgba(0, 0, 0, 0)');
        } 
        else
        {
            $('.fixed-top').css('background', 'rgba(0, 0, 0, 0.6)');
        }
    });
    
    $('.navbar-toggler').click(function(){
        var visible = $('.collapse').is(':visible');
        var sect = $('.active').attr('href');
        if(!visible)
        {
            $('.fixed-top').css('background', 'rgba(0, 0, 0, 0.6)');
        }
        else
        {
            if(sections.includes(sect))
            {
                $('.fixed-top').css('background', 'rgba(0, 0, 0, 0)');
            } 
            else
            {
                $('.fixed-top').css('background', 'rgba(0, 0, 0, 0.6)');
            }
        }
        // if($(this).css('background') == 'rgba(0, 0, 0, 0)')
        // {
        //     $('.fixed-top').css('background', 'rgba(0, 0, 0, 0.6)');
        // }
        // else
        // {
        //     $('.fixed-top').css('background', 'rgba(0, 0, 0, 0)');
        // }
    })
})