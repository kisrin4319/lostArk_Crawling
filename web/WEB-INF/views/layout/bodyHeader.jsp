<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
START MODULE AREA 1: Menu 1
-->
<section class="MOD_MENU" data-theme="_bgp">

<span>
	<input type="button" id="craw_submit" name="craw_submit" class="btn btn-warning" value="조회" style="float: right; width: 65px;"/>
	<input type="text" id="craw_id" name="craw_id" class="form-control" placeholder="ID 입력" value="${user_id }" style="width:300px; border: none; background: #ffffff; float: right;"/>
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
          <a href="#" data-theme="_bgp">수집</a>
          <ul>
            <li>
              <a href="javascript:goCollection('heartIsland');"  data-theme="_bgpd">섬의마음</a>
            </li>
            <li>
              <a href="javascript:goCollection('starOrpheus');" data-theme="_bgpd">오르페우스의 별</a>
            </li>
            <li>
              <a href="javascript:goCollection('heartGiant');" data-theme="_bgpd">거인의 심장</a>
            </li>
            <li>
              <a href="javascript:goCollection('greatArt');" data-theme="_bgpd">위대한 미술품</a>
            </li>
            <li>
              <a href="javascript:goCollection('seedMococo');" data-theme="_bgpd">모코코 씨앗</a>
            </li>
            <li>
              <a href="javascript:goCollection('adventure');" data-theme="_bgpd">모험물</a>
            </li>
            <li>
              <a href="javascript:goCollection('igneaSign');" data-theme="_bgpd">이그네아의 징표</a>
            </li>
            <li>
              <a href="javascript:goCollection('worldLeaf');" data-theme="_bgpd">세계수의 잎</a>
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