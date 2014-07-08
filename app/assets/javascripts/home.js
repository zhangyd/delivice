
$(function() {
    $('#fader div:not(:first)').hide();
    $('#fader div').css('position', 'absolute');
    $('#fader div').css('top', '0px');
    $('#fader div').css('left', '0px');
    $('#fader div').css('bottom', '0px');
    $('#fader div').css('right', '0px');
    $('#fader div').each(function() {
	        // var img = $(this);
	        // $('<img>').attr('src', $(this).attr('src')).load(function() {
	        //     img.css('margin-left', -this.width / 2 + 'px');
	        // });
    });
    
    var pause = true;


    function fadeNext() {
        $('#fader div').first().fadeOut(1000).appendTo($('#fader'));
        $('#fader div').first().fadeIn();
    }

    function fadePrev() {
        $('#fader div').first().fadeOut(1000);
        $('#fader div').last().prependTo($('#fader')).fadeIn();
    }

    $('#next').click(function() {
        fadeNext();
    });

    $('#prev').click(function() {
        fadePrev();
    });

    // $('#fader, .button').hover(function() {
    //     pause = true;
    // },function() {
    //     pause = true;
    // });

    function doRotate() {
        if(!pause) {
            fadeNext();
        }    
    }
    
    var rotate = setInterval(doRotate, 2000);
});