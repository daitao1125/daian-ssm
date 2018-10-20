<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Basic Struts 2 Application - Welcome</title>
    <script src="/js/common.js"></script>
    <script src="/js/jquery-1.7.js"></script>
    <script src="/js/jquery.blockUI.js"></script>

    <%--<link type="text/css" href="/css/buy.css"  rel="stylesheet"/>--%>
<style>

    .jianli_apply {

        display: inline-block;

        width: 30px;

        height: 20px;

        border: 1px solid #CCC;

        background: #9c9d9e;
        margin:0;padding:0;


    }

    .increment {
        float: right;
        border: 1px solid red;
        border-left: 0;
        color: #666;
    }


    .inc{
        display: inline-block;
        width: 20px;
        height: 20px;
        text-align: center;
        margin: 0;
        border: 1px solid lightgrey;
        vertical-align: top;
        line-height: 20px;
        font-size: 12px;
        box-sizing: border-box;
        cursor: pointer;
    }

    .dec{
        display: inline-block;
        width: 20px;
        height: 20px;
        text-align: center;
        margin: 0;
        border: 1px solid lightgrey;
        vertical-align: top;
        line-height: 20px;
        font-size: 12px;
        box-sizing: border-box;
        cursor: pointer;
    }

    .inp{
        display: inline-block;
        margin: 0;
        padding: 0;
        width: 40px;
        height: 20px;
        font-size:12px;
        vertical-align: top;
        box-sizing: border-box;
    }
</style>

</head>
<body>
<div style="font-size:0;">

    <div class="inc">-</div>
    <input type="text"  class="inp" value=""
           onKeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)))"
           onkeyup="this.value=this.value.replace(/\D/g,'')">
    <div class="dec">+</div>
</div>
<a href="javascript:void(0);" clstag="clickcart|keycount|xincart|cart_num_up" class="increment" >+</a>

<br>
<input type="text" name="asdfasdf">
<div class="jianli_apply" >
    <a href="#">-</a>
</div>

<input type="text"  style="display:inline-block;margin:0;padding:0;width:40px;"   value=""
       onKeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)))"
       onkeyup="this.value=this.value.replace(/\D/g,'')">

<br>

<div class="form-item-content">
    <div class="input-number">

        <span role="button" class="input-number-decrease" data-type="input-number-decrease">

                  <i class="icon-minus"></i>
                </span>
        <span role="button" class="input-number-increase" data-type="input-number-increase">
                  <i class="icon-plus"></i>
                </span>

        <div class="input-number-input">

            <input type="text" id="userNum" name="userNum" max="100000" min="20" class="input-inner" data-type="input-inner" value=""
                   onKeypress="return (/[\d]/.test(String.fromCharCode(event.keyCode)))"
                   onkeyup="this.value=this.value.replace(/\D/g,'')">
        </div>
    </div>
</div>

<br>
<div class="quantity-form">
    <a href="javascript:void(0);" class="decrement disabled" id="decrement_8888_5853579_1_1">-</a>
    <input autocomplete="off" type="text" class="itxt" value="1" id="changeQuantity_8888_5853579_1_1_0" minnum="1">
    <a href="javascript:void(0);" clstag="clickcart|keycount|xincart|cart_num_up" class="increment" id="increment_8888_5853579_1_1_0">+</a>
</div>
<div>
    <input type="checkbox" id="che1" name="che" value="1">
    <input type="checkbox"  id="che2"  name="che" value="2">
    <input type="checkbox" id="che3"  name="che" value="3">
    <input type="checkbox" id="che4"  name="che" value="4">
</div>

<div id="domMessage" style="display:none; background-color: white;">
    <h1  onclick="unLock()">We are processing your request.  Please be patient.</h1>
</div>

<label>
<input type="checkbox" name="selectAll" onclick="checkAll(this)" value="全选">
全选</label>
<br>
<input type="button" id="viewid" value="查看" onclick="viewid()" >

index page
<br>
<span style='cursor:pointer;color:blue;' onclick="alert(this.innerHTML)">this的dom测试</span>
<br>
<input id="btnTest" type="button" value="提交" onclick="alert(this.id)" />
<br>

<p><a href="<s:url action='hello'/>">Hello World</a></p>
<input type="button" onclick="test()" value="测试">
<br>
<input id="btnTest1" type="button" value="提交1" onclick="thisTest()" />
<input id="btnTest2" type="button" value="提交2" onclick="alt1()" />
</body>
</html>
<script type="text/javascript">

    //自执行写法1
    // (function alt1(){
    //     alert(1);
    // })();

    // var T1=function(){
    //     alert(12)
    // }();

    // var para1='asdf'
    // var T1=function(obj){
    //     alert(obj)
    // }(para1);

    function t2(){
        alert('t2');
    }




    // var para1={a:1;b:2,c:'Ok'};
    // var T1=function(obj){
    //     alert(obj.a)
    // }(para1);

    function checkAll(obj) {

        alert(obj.value);
        jQuery("div  :checkbox").prop("checked", $(obj).is(':checked'));
        if ($(obj).is(':checked')) {
            jQuery("div").attr("class", "current");
        } else {
            jQuery("div").removeClass("current");
        }
    }

    function viewid() {

        var ids = "";
        // $('input:checkbox[name="che"]:checked').each(function(){ //由于复选框一般选中的是多个,所以可以循环输出
        //     alert(this.value);
        // });

        // var standard = $('input:checkbox[name="che"]:checked').val();
        // alert(standard)
      //  $('input:checkbox[name="che"]:checked').each(function () {
        $("input:checkbox[name='che']:checked").each(function () {
            ids += this.value + ",";
        });
       // alert(ids);
      $.blockUI({ message: '<h1 style="display: block; background-color: white;" ><img src="busy.gif" onclick="unLock()" /> Just a moment...</h1> <input type="button" id="che1" name="che" onclick="unLock()" value="关闭">' });

       // $.blockUI({ message: $('#domMessage') });
    }
    
    function unLock() {
        $.unblockUI();
    }


    //方法1
    // $("#btnTest1).click(function(){
    //     //$('input:checkbox:checked') 等同于 $('input[type=checkbox]:checked')
    //     //意思是选择被选中的checkbox
    //     $.each($('input:checkbox:checked'),function(){
    //         window.alert("你选了："+
    //             $('input[type=checkbox]:checked').length+"个，其中有："+$(this).val());
    //     });
    // });



    // function thisTest(){
    //     this.value="提交中";
    // }
    // var btn=document.getElementById("btnTest1");
    // alert(btn.onclick); //第一个按钮函数
    //
    // var btnOther=document.getElementById("btnTest2");
    // btnOther.onclick=thisTest;
    // alert(btnOther.onclick); //第二个按钮函数
</script>