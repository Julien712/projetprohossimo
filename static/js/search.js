$(document).ready(function($){

    $('.placehold').each(function(){
    $(this).attr('data-search-term', $(this).val().toLowerCase());
    });
    
    $('.live-search-box').on('keyup', function(){
    
    var searchTerm = $(this).val().toLowerCase();
    
        $('.ligne').each(function(){
    
            if ($(this).children('.placehold').filter('[data-search-term *= ' + searchTerm + ']').length > 0 || searchTerm.length < 1) {
                $(this).show("slow");
            } else  {
                $(this).hide("slow");
            }
    
        });
    
    });
    
    });