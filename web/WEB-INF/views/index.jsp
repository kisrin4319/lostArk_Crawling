<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!-- Start Head -->
<!-- include header.jsp -->
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<!-- End Head -->
<script type="text/javascript">
$(function() {
	$("#craw_id").on("keyup", function(e) {
		if (e.keyCode == 13) {
			doSearch();
		} else {
			// nothing to do.
		}
	});
	
    $("#craw_submit").click(function(){
    	doSearch();
    });
});

function doSearch() {
	$.ajax({
        url :"loarc/Character.ajax",
        data :{
            user_id : $("#craw_id").val(),
        },
        dataType : "json",
        type : "post",
        success:function(data){
        	$("#charaterImageArea").empty();
            console.log(data.Profileinfo);
            var aaa = {html : data.Profileinfo};
            var serializeCharaterImage = {html: data.serializeCharaterImage};
            var json = JSON.stringify(aaa);
            var jsonSerializeCharaterImage = JSON.stringify(serializeCharaterImage);
            $(".content_craw").append("<tr><th>"+data.Profileinfo+"</th></tr>");
            // 이미지 영역에 캐릭터 이미지가 들어감
            $("#charaterImageArea").append(data.serializeCharaterImage);
            // 상단 LostArc Profile 부분이 검색한 캐릭터명으로 변경
            $("#charaterName")[0].innerText = $("#craw_id").val();
        }
    });
}
</script>

<body class="modern">
<%@ include file="/WEB-INF/views/layout/bodyHeader.jsp" %>
<!--
START MODULE AREA 2: Hero 1
-->
<section class="MOD_HERO" style="/* background-image:url(https://unsplash.it/1400/?random) */ background-color: #ffffff;">
  <div data-layout="_r">
    <div data-layout="de10">
      <h1 id="charaterName">LostArc Profile</h1>
      <!-- <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h3> -->
      <!-- <a href="#" class="btn">Read more</a> -->
    </div>
  </div>
</section>
<!--
END MODULE AREA 2: Hero 1
-->

<!--
START MODULE AREA 3: Image | Text | Text
-->
<section>
  <div data-layout="_r">
    <div id="charaterImageArea" data-layout="ch8 ec-third">
    </div>
    <div data-layout="ch8 ec-third">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
    <div data-layout="ec-third">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
  </div>
</section>
<!--
END MODULE AREA 3: Image | Text | Text
-->

<script src="/resources/assets/js/index.js"></script>
</body>

</html>
			