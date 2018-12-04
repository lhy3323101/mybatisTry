/*
onload=function(){
    setInterval(go, 1000);
};
var x=3; //利用了全局变量来执行
function go(){
    x--;
    if(x>0){
        $("#sp").html(x + "秒后跳转到首页") ; //每次设置的x的值都不一样了。
    }else{
        location.href='index.jsp';
    }
}*/
var x = 3;
$(document).ready(function () {
    setInterval(go,1000);

})

function go() {
    x--;
    if (x > 0){
        if ($("#er").attr('id')=="er"){
            $("#er").html(x + "秒后跳转到首页");
        }else {
            $("#sp").html(x + "秒后跳转到首页");
        }
    }else {
        $(window).attr('location',contextPath +'/index.jsp');
    }
}
