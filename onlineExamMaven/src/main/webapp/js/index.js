/**
 * Created by Administrator on 2017-2-5.
 */
//   侧边点击隐藏
$(function() {
    var a = 0, b = 0, c = 0, d = 0, e = 0;
    $(".mainLeft-tab .OAchild").click(function () {
        $(".OAchild1").slideToggle();

    });
    $(".mainLeft-tab .fuze").click(function () {
        $(".fuze1").slideToggle();

    });
    $(".mainLeft-tab .canyu").click(function () {
        $(".canyu1").slideToggle();

    });
    $(".mainLeft-tab .myData").click(function () {
        $(".myData1").slideToggle();

    });
    $(".mainLeft-tab .cjfx").click(function () {
        $(".cjfx1").slideToggle();
    });
    $(".three").click(function () {
        $(".three").each(function () {
            $(this).removeClass("threeActive");
        });
        var dataV=$(this).attr("data-value");
        var historyTitle=$(this).children().html();
        $(".breadcrumb .historyTitle").html("&nbsp;>&nbsp;"+historyTitle);
        // $(".main-content").load(dataV+".html");
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