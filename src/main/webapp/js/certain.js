var uid;

function certain(obj) {
    console.log(obj);
    var td = $(obj).parent().parent().find("td")
    uid = td.eq(0).text();
    $(window).attr('location',contextPath +'/user/findUser?id=' + uid);


}