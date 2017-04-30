/**
 * Created by Administrator on 2017-2-5.
 */
$(function () {
    //            全选，全不选，
    var cheAll=false,che=false;
    $("#AllCheck").click(function () {
        var unche=document.getElementById("unallCheck");
        unche.checked=false;
        var len=document.getElementsByClassName("checkbox");
        if (cheAll){
            for (var i=0;i<len.length;i++){
                len[i].checked=false;
            }
            che=false;
            cheAll=false;
        }else{
            for (var i=0;i<len.length;i++){
                len[i].checked=true;
            }
            che=true;
            cheAll=true
        }

    });
    $("#unallCheck").click(function () {
        var che=document.getElementById("AllCheck");
        var len=document.getElementsByClassName("checkbox");
        for (var i=0;i<len.length;i++){
            len[i].checked=false;
        }
        if (che){
            che.checked=false;
        }
        cheAll=false;
    });

    $(".can").click(function () {
        $(".load").hide();
    });

//        修改资料
    var num1;
    $(".ksBtn").click(function () {
        var num=$(this).parent().index()-1;
        $(".load").show();
        var name=$(".name a").eq(num).text();
        $("#name").val(name);
        var idCard=$(".idCard").eq(num).text();
        $("#idCard").val(idCard);
        var clas=$(".class").eq(num).text();
        $("#class").val(clas);
        num1=num;
    });
    $(".que").click(function () {
        $(".load").hide();
        var name=$("#name").val();
        $(".name a").eq(num1).html(name);
        var idCard=$("#idCard").val();
        $(".idCard").eq(num1).html(idCard);
        var clas=$("#class").val();
        $(".class").eq(num1).html(clas);
    });
});
