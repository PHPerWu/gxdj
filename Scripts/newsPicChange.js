//auto scroll
var cfg={
    "scroll":500,//滚动时间
    "stop":3000,//停留时间
    "num":5//图片数
};
function run(){
    if(parseInt($("#pnl_scroll").css("left"))>-(480*(cfg.num-1)))
    {
        run.index++;
        $("#pnl_scroll").animate({left : '-=480px'}, cfg.scroll,function(){
            $("#pnl_btn li.on").removeClass("on");
            $("#pnl_btn li").eq(run.index).addClass("on");
            start_auto();
        });
    }
    else
    {
        run.index=0;
        $("#pnl_scroll").animate({left : '0px'}, cfg.scroll,function(){
            $("#pnl_btn li.on").removeClass("on");
            $("#pnl_btn li").eq(run.index).addClass("on");
            start_auto();
        });
    }
}
run.index=0;
run.time=0;
function go_to(index){
    run.index=index;
    var left=480*index;
    $("#pnl_scroll").animate({left: '-'+left+'px'}, cfg.scroll,function(){
        $("#pnl_btn li.on").removeClass("on");
        $("#pnl_btn li").eq(run.index).addClass("on");
    });
}

function start_auto(){
    stop_auto();
    run.time=setTimeout(run,cfg.stop);
}
function stop_auto(){
    clearTimeout(run.time);
}
$(function(){
    start_auto();
    $("#pnl_btn,#pnl_scroll").hover(function(){
        stop_auto();
    },function(){
        start_auto();
    });
    $("#pnl_btn li").each(function(i,j){
        $(this).click(function(){
            go_to(i);
        });
    });
    setInterval(function(){
        $("li",$("#pnl_ey")).first().appendTo($("#pnl_ey"));
    },4000);
    $("#pnl_speak_b").mouseenter(function(){
        $("#pnl_speak").height(100);
    }).mouseleave(function(){
            $("#pnl_speak").height(55);
        });
    $("#pnl_together_b").mouseenter(function(){
        $("#pnl_together").show();
    }).mouseleave(function(){
            $("#pnl_together").hide();
        });
    $('#slide_box').mfwSlide();
});