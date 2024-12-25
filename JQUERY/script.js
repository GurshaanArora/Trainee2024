$(document).ready(function(){

    $('.btn1').click(function(){
        $('.para1').text("You clicked on a button")
    })

    $(".btn2").click(function(){
        $('.para2').hide();
    })

    $(".btn3").click(function(){
        $('.para2').show();
    })

    $(".btn4").click(function(){
        $('.para2').fadeIn(1000);
    })

    $(".btn5").click(function(){
        $('.para2').fadeOut(2000);
    })

    $(".btn6").click(function(){
        $('.para2').fadeToggle("slow");
    })
    
    $(".btn7").click(function(){
        $('.para2').slideToggle(2000);
    })

    $(".btn8").click(function(){
        $('.demo2').animate({
            opacity : '0.5',
            width : '900px',
            height : '900px'
        });
    })

    $('.btn9').click(function(){
        alert("Text: " + $('.para3').text());
    })

    $('.btn10').click(function(){
        alert("Value: " + $('.test').val());
    })

    $('.btn11').click(function(){
        alert("Attribute: " + $('.test1').attr("href"));
    })

    $('.btn12').click(function(){
        $('.test').val("Setting value through Jquery")
    })
    
    $('.btn13').click(function(){
        $('.heading3').append(" with appended text")
    })

    $('.btn14').click(function(){
        $('.test1').remove();
    })

    $('.btn15').click(function(){
        $('.heading4').toggleClass('important');
        $('.para4').toggleClass('red');
    })

    $('.btn16').click(function(){
        $('.demo4').css({"background-color" : "yellow" , "border-style" : "dotted", "border-radius" :"30px"});
    })

    $('.btn17').click(function(){
        $(".btn17").parents().css({"color": "red", "border": "2px solid red"});
        console.log($('h2').parents());
    });

    $('.btn18').click(function(){
        $(".demo5").children("p").css({"color": "red", "border": "2px solid red"});
    });

    $('.btn19').click(function(){
        $(".demo5").find(".heading5").css({"color": "red", "border": "2px solid red"});

    });

    $('.btn20').click(function(){
        $(".btn20").siblings().css({"color": "red", "border": "2px solid red"});
    })

    $('.btn21').click(function(){
        $(".btn21").next().css({"color": "red", "border": "2px solid red"});
    })
    $('.btn22').click(function(){
        $(".btn22").prev().css({"color": "red", "border": "2px solid red"});
    })

})