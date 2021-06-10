<%--
  Created by IntelliJ IDEA.
  User: mkjeon
  Date: 2021-06-07(007)
  Time: 오후 5:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    <title>Title</title>
</head>
<body>
<div class="craw">
    <input type="text" id="craw_id" name="craw_id" class="form-control" placeholder="ID 입력" style="width:300px;"/>
    <input type="button" id="craw_submit" name="craw_submit" class="btn btn-warning" value="조회"/>
</div>
<div class="content_craw">
</div>

<script type="text/javascript">
    $("#craw_submit").click(function(){
        $.ajax({
            url :"loarc/Character.ajax",
            data :{
                user_id : $("#craw_id").val(),
            },
            dataType : "json",
            type : "post",
            success:function(data){
                console.log(data.Profileinfo);
                $(".content_craw").append("<tr><th>"+data.Profileinfo+"</th></tr>");

            }
        })
    })
</script>
</body>
</html>
