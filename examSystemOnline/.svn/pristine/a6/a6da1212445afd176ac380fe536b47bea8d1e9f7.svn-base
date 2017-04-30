/**
 * Created by Administrator on 2017-2-5.
 */
//   侧边点击隐藏
$(function() {
    var a = 0, b = 0, c = 0, d = 0, e = 0;
    $(".mainLeft-tab .OAchild a div").click(function () {
        $(".OAchild1").slideToggle();
        if (a == 0) {
            $(this).children("img").attr("src", "img/jian.png");
            a = 1
        } else if (a = 1) {
            $(this).children("img").attr("src", "img/jia.png");
            a = 0;
        }
    });
    $(".mainLeft-tab .fuze a div").click(function () {
        $(".fuze1").slideToggle();
        if (b == 0) {
            $(this).children("img").attr("src", "img/jian.png");
            b = 1
        } else if (b = 1) {
            $(this).children("img").attr("src", "img/jia.png");
            b = 0;
        }
    });
    $(".mainLeft-tab .canyu a div").click(function () {
        $(".canyu1").slideToggle();
        if (c == 0) {
            $(this).children("img").attr("src", "img/jian.png");
            c = 1
        } else if (c = 1) {
            $(this).children("img").attr("src", "img/jia.png");
            c = 0;
        }
    });
    $(".mainLeft-tab .myData a div").click(function () {
        $(".myData1").slideToggle();
        if (d == 0) {
            $(this).children("img").attr("src", "img/jian.png");
            d = 1
        } else if (d = 1) {
            $(this).children("img").attr("src", "img/jia.png");
            d = 0;
        }
    });
    $(".mainLeft-tab .cjfx a div").click(function () {
        $(".cjfx1").slideToggle();
        if (e == 0) {
            $(this).children("img").attr("src", "img/jian.png");
            e = 1
        } else if (e = 1) {
            $(this).children("img").attr("src", "img/jia.png");
            e = 0;
        }
    });
    $(".three").click(function () {
        $(".three").each(function () {
            $(this).removeClass("threeActive");
        });
        var dataV=$(this).attr("data-value");
        var historyTitle=$(this).children().html();
        $(".historyTitle").html("&nbsp;>&nbsp;"+historyTitle);
        $(".main-content").load(dataV+".html");
        $(this).toggleClass("threeActive");
    });
});
var lis=document.querySelectorAll(".main-body-nav li");
var divs=document.querySelectorAll(".tab");
var select=new select({
    li:lis,
    content:divs,
    style1:"main-body-nav-active"
});