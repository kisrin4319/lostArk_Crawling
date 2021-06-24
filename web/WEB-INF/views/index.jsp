<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<!-- Start Head -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로아엇</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
	<script src="https://cdn.rawgit.com/blowsie/Pure-JavaScript-HTML5-Parser/master/htmlparser.js"></script>
	<link rel="stylesheet" href="resources/assets/css/style.min.css">
	<link rel="stylesheet" href="resources/assets/css/modules.css">

	<!-- Canonical URL usage -->
	<link rel="canonical" href="https://aperitif.io/">

	<!-- Facebook Open Graph -->
	<meta property="og:url"                content="https://aperitif.io/" />
	<meta property="og:title"              content="Aperitif | The web template generator" />
	<meta property="og:description"        content="Aperitif is a rapid web template generation tool." />
	<meta property="og:image"              content="https://aperitif.io/img/aperitif-facebook.png" />
	<meta property="og:image:width"        content="1200" />
	<meta property="og:image:height"       content="630" />

	<!-- Twitter Cards -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@Aperitif">
	<meta name="twitter:creator" content="@Aperitif">
	<meta name="twitter:title" content="Aperitif - The web template generator">
	<meta name="twitter:description" content="Aperitif is a rapid web template generation tool.">
	<meta name="twitter:image" content="https://aperitif.io/img/aperitif-card.png">

	<!-- Google Structured Data -->
	<script type="application/ld+json">
	{
	"@context" : "http://schema.org",
	"@type" : "SoftwareApplication",
	"name" : "Aperitif",
	"image" : "https://aperitif.io/img/aperitif-logo.svg",
	"url" : "https://aperitif.io/",
	"author" : {
	  "@type" : "Person",
	  "name" : "Octavector"
	},
	"datePublished" : "2017-MM-DD",
	"applicationCategory" : "HTML"
	}
	</script>
</head>
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

<!--
START MODULE AREA 1: Menu 1
-->
<section class="MOD_MENU" data-theme="_bgp">

<span>
	<input type="button" id="craw_submit" name="craw_submit" class="btn btn-warning" value="조회" style="float: right; width: 65px;"/>
	<input type="text" id="craw_id" name="craw_id" class="form-control" placeholder="ID 입력" style="width:300px; border: none; background: #ffffff; float: right;"/>
</span>
  <div data-layout="_r" class="nopadding">
    <nav class="MOD_MENU_Nav">
      <p class="MOD_MENU_Title">Menu</p>
      <svg class="MOD_MENU_Button" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
        <rect width="30" height="6"/>
        <rect y="24" width="30" height="6"/>
        <rect y="12" width="30" height="6"/>
      </svg>
      <ul class="AP_Menu_List">
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
          <ul>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item long title</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
          </ul>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
        </li>
        <li>
          <a href="#" data-theme="_bgp">Menu Item</a>
          <ul>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item long title</a>
            </li>
            <li>
              <a href="#" data-theme="_bgpd">Sub-Menu Item</a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</section>
<!--
END MODULE AREA 1: Menu 1
-->

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
			