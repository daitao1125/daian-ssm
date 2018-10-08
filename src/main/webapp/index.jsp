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
<style>
    .current{
        background-color: red;
    }
</style>

</head>
<body>

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
<h1>Welcome To Struts 2!</h1>
<p><a href="<s:url action='hello'/>">Hello World</a></p>
<input type="button" onclick="test()" value="测试">
<br>
<input id="btnTest1" type="button" value="提交1" onclick="thisTest()" />
<input id="btnTest2" type="button" value="提交2" />
</body>
</html>
<script type="text/javascript">


    function checkAll(obj) {

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
        alert(ids);
       //$.blockUI({ message: '<h1 style="display: block; background-color: white;" ><img src="busy.gif" onclick="unLock()" /> Just a moment...</h1> <input type="button" id="che1" name="che" onclick="unLock()" value="关闭">' });

        $.blockUI({ message: $('#domMessage') });
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