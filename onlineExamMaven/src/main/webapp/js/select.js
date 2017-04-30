/**
 * Created by Administrator on 2016-9-14.
 */
function select(opt){
    var option={
        li:"",
        content:"",
        style1:""
    };
    init(opt);
    function init(opt){
        extend(option,opt);
        getlis();
    }
    function getlis(){
        for (var i=0;i<option.li.length;i++){
            //option.li[i].index=i;
            option.li[i].onclick=function(num){
               return function () {
                    for (var j = 0; j < option.content.length; j++) {
                        option.li[j].className = "";
                        option.content[j].style.display = "none";
                    }
                    this.className = option.style1;
                    option.content[num].style.display = "block";
                }
            }(i);
        }
    }
function extend(a,b){
    for (var key in b){
        if (a.hasOwnProperty(key)){
            a[key]=b[key];
        }
    }
    return a;
}
}
