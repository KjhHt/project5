<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/layout.css" >

</head>

<body>
<jsp:include page="/project5/topNav.jsp"></jsp:include>
<%--  
<img src="img\calendar.PNG" class="static" width="800" height="380"/>--%>
<div class="docWrap">
<div class="articleArea">
<div id="content">
<div class="contents game">
		<h2 class="blind">게임구매</h2>
		<!-- contInner -->
			<div class="contInner">
				<!-- locationArea -->
				<div class="locationArea">		
				</div>
				<!--// locationArea -->
				<div class="contTitle">
					<h3 id="gameName">축구토토 승무패</h3>
					<!-- gameselBox -->
					<div class="gameselBox">					
						<span class="selectBox">			
						<span class="selectBox">
							<select class="selectMenu" title="게임회차 선택" id="selectBoxGameRnd"><option value="G011,220036" data-status="SaleProgress">36회차 [07월16일 토요일 마감]</option></select><button type="button" role="combobox" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" title="게임회차 선택" style="display: none;" aria-labelledby="ui-id-4" tabindex="0"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span role="option" class="ui-selectmenu-text">36회차 [07월16일 토요일 마감]</span></button>
						</span>
						<button type="submit" id="btnSearchSlip" class="btn btnM bBorder" title="축구토토 승무패 36회차 조회">조회</button>
					</div>
				</div>
				<div class="gametopArea">
					<ul class="gametopList">
						<li>
							<span class="tit">총 발매금액</span>
							<p class="desc"><span class="fs14" id="totSellAmt">307,315,000</span>원</p>
						</li>
						<li>
							<span class="tit">발매기간</span>
							<p class="desc" id="sellDate">22.07.14(목) 08:00 ~ 22.07.16(토) 17:50</p>
						</li>
						<li>
							<span class="tit" id="winnerTotalPrizeTit">1등 총 예상적중금액</span>
							<p class="desc point" id="winnerTotalPrizeDesc"><strong class="fcRed" id="winnerTotalPrize">797,416,250</strong><span>원</span></p>
						</li>
					</ul>
					<ul class="gameInfoBox dashText fcBlue" id="gameInfoTextList"><li>- 적중결과 발표일은 최종경기 종료 당일 예정입니다.</li><li>- 환급(환불)기간은 공식 적중결과 발표일 익일(지급개시일)부터 1년간이며, 적중결과 발표 당일부터 지급 가능합니다.</li><li>- 전체 투표수: 307,315 / 전회차 이월금액: 720,587,500원</li></ul>
				</div>
	<!--// gametopArea -->
		</div>
<!--// contInner -->						
<div class="gameMainArea">		
<div class="lybox setBar">
	<div class="cell">		
		<span class="ml5 fs12" id="spanStandardDate">22.07.07(목) 18:54 기준</span>
	</div>
</div>		
<div class="tabList game ui-tabs ui-corner-all ui-widget ui-widget-content" id="tabMenuDiv">
			<ul id="gameTabMenuUl" role="tablist" class="ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header">
				<li class="ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active" aria-controls="tabs-1" aria-labelledby="ui-id-1"><a href="#tabs-1" title="선택됨" class="ui-tabs-anchor" id="ui-id-1" tabindex="0">구매투표지</a></li>
				<li class="ui-tabs-tab ui-corner-top ui-state-default ui-tab" aria-controls="tabs-2" aria-labelledby="ui-id-2"><a href="#tabs-2" class="ui-tabs-anchor" id="ui-id-2" tabindex="0">맞춤조건구매</a></li>
				<li class="ui-tabs-tab ui-corner-top ui-state-default ui-tab" aria-controls="tabs-3" aria-labelledby="ui-id-3"><a href="#tabs-3" class="ui-tabs-anchor" id="ui-id-3" tabindex="0">공지사항</a></li>
			</ul>
			<!-- tab 1 -->
			<div id="tabs-1" class="main ui-tabs-panel ui-corner-bottom ui-widget-content" aria-labelledby="ui-id-1" role="tabpanel">
				<div class="contInner box">
					<h4 class="blind">구매투표지</h4>
					<ul class="tabButton c100 pt20">
						<li class="selected"><button type="button" title="현재 선택" id="btnVoteType1">투표현황보기</button></li>
						<li><button type="button" id="btnVoteType2">승/무/패 보기</button></li>
					</ul>
					<div class="lybox setBar">
						<div class="cell">											
							<p>14경기 결과를 승/무/패로 선택해 주세요. (복식 가능)</p>	
						</div>
						<div class="cell" id="divSelectGameAutoBtnArea">
							<div class="sortBox02">
								<button type="button" class="btn btnM bBorder" id="btnMultipleVoteSelect">다득표 자동선택</button>
							</div>
							<span class="selectBox w100">
								<select class="selectMenu" id="selectBoxVoteSelectCnt" title="금액 선택">
									<option value="0">1,000원</option>
									<option value="1">4,000원</option>
									<option value="2">8,000원</option>
									<option value="3">12,000원</option>
									<option value="4">24,000원</option>
									<option value="5">32,000원</option>
									<option value="6">48,000원</option>
								</select><button type="button" role="combobox" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" title="금액 선택" style="display: none;"><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span><span role="option" class="ui-selectmenu-text">1,000원</span></button>
							</span>
							<ul class="sortBox">
								<li><button type="button" class="btnIco single autoSelect" id="btnAutoVoteSelect"><span class="blind">자동선택</span></button></li>
								<li><button type="button" class="btnIco single reset" id="btnSlipGridReset"><span class="blind">초기화</span></button></li>
							</ul>
						</div>
					</div>
	
<div class="tblArea noPadd" id="grid_victory_div">
	<table class="tbl tblAuto slip" id="grid_victory" style="width: 100%;">
		<caption>구매투표지 목록은(는) 경기, 경기일시/장소, 홈팀 vs 원정팀 예상결과선택 승, 5, 패, 조합수을(를) 나타낸 표</caption>
		<colgroup id="grid_victory_colgroup">
			<col style="width:6.6%">
			<col style="width:*">
			<col style="width:23%">
			<col style="width:13.5%">
			<col style="width:12.7%">
			<col style="width:13.5%">
			<col style="width:5.3%">
			<col style="width:4.1%">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" rowspan="2">경기</th>
				<th scope="col" rowspan="2">경기일시/장소</th>
				<th scope="col" rowspan="2">
					<div class="vsDIv">
						<div>홈팀</div>
						<div><span class="center">vs</span> 원정팀</div>
					</div>
				</th>
				<th scope="colgroup" colspan="3">예상결과선택</th>
				<th scope="col" rowspan="2">조합수</th>
				<th scope="col" rowspan="2" id="plusBtnTheadTh">정보</th>
			</tr>
			<tr>
				<th scope="col">승</th>
				<th scope="col" class="bdl0" id="btnVoteTypeMidTxt">무</th>
				<th scope="col" class="bdl0">패</th>
			</tr>
		</thead>
<tbody id="grid_victory_tbody"><tr><td class="bdl0"><span class="db">1경기</span></td><td><span class="fs11">22.07.16 (토) 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>가시마사커스타디움</span></div></div></td><td><div class="vsDIv fwb"><div>가시마</div><div><span class="center fwn">vs</span> 비셀고베</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_0_1" name="mk_0_0_1" onclick="victory.clickMarking(0,0,1)"><label for="mk_0_0_1"><span class="hidden">투표율</span>57.9%<span class="won">(177,934)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_0_2" name="mk_0_0_2" onclick="victory.clickMarking(0,0,2)"><label for="mk_0_0_2"><span class="hidden">투표율</span>26.4%<span class="won">(81,144)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_0_3" name="mk_0_0_3" onclick="victory.clickMarking(0,0,3)"><label for="mk_0_0_3"><span class="hidden">투표율</span>15.7%<span class="won">(48,237)</span></label></span></div></td><td id="rowSlipSelectCnt_0">-</td><td class="detailAreaTd"><button type="button" class="btnOn" title="1경기  가시마 : 비셀고베 상세정보 열기"><span class="hidden">1경기  가시마 : 비셀고베 상세정보 열기</span></button></td></tr><tr><td class="bdl0"><span class="db">2경기</span></td><td><span class="fs11">22.07.16 (토) 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>IAI스타디움니혼다이라</span></div></div></td><td><div class="vsDIv fwb"><div>시미즈</div><div><span class="center fwn">vs</span> 우라와</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_1_1" name="mk_0_1_1" onclick="victory.clickMarking(0,1,1)"><label for="mk_0_1_1"><span class="hidden">투표율</span>14.4%<span class="won">(391,284)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_1_2" name="mk_0_1_2" onclick="victory.clickMarking(0,1,2)"><label for="mk_0_1_2"><span class="hidden">투표율</span>32.6%<span class="won">(885,870)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_1_3" name="mk_0_1_3" onclick="victory.clickMarking(0,1,3)"><label for="mk_0_1_3"><span class="hidden">투표율</span>53%<span class="won">(1,442,916)</span></label></span></div></td><td id="rowSlipSelectCnt_1">x2</td><td class="detailAreaTd"><button type="button" class="btnOn" title="2경기  시미즈 : 우라와 상세정보 열기"><span class="hidden">2경기  시미즈 : 우라와 상세정보 열기</span></button></td></tr><tr><td class="bdl0"><span class="db">3경기</span></td><td><span class="fs11">22.07.16 (토) 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>전주월드컵경기장</span></div></div></td><td><div class="vsDIv fwb"><div>전북현대</div><div><span class="center fwn">vs</span> 성남FC</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_2_1" name="mk_0_2_1" onclick="victory.clickMarking(0,2,1)"><label for="mk_0_2_1"><span class="hidden">투표율</span>82.3%<span class="won">(2,237,491)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_2_2" name="mk_0_2_2" onclick="victory.clickMarking(0,2,2)"><label for="mk_0_2_2"><span class="hidden">투표율</span>12.4%<span class="won">(338,385)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_2_3" name="mk_0_2_3" onclick="victory.clickMarking(0,2,3)"><label for="mk_0_2_3"><span class="hidden">투표율</span>5.3%<span class="won">(144,194)</span></label></span></div></td><td id="rowSlipSelectCnt_2">-</td><td class="detailAreaTd"><button type="button" class="btnOn" title="3경기  전북현대 : 성남FC 상세정보 열기"><span class="hidden">3경기  전북현대 : 성남FC 상세정보 열기</span></button></td></tr><tr><td class="bdl0"><span class="db">4경기</span></td><td><span class="fs11">22.07.16 (토) 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>울산문수축구경기장</span></div></div></td><td><div class="vsDIv fwb"><div>울산현대</div><div><span class="center fwn">vs</span> 수원삼성</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_3_1" name="mk_0_3_1" onclick="victory.clickMarking(0,3,1)"><label for="mk_0_3_1"><span class="hidden">투표율</span>75.5%<span class="won">(2,054,357)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_3_2" name="mk_0_3_2" onclick="victory.clickMarking(0,3,2)"><label for="mk_0_3_2"><span class="hidden">투표율</span>17.5%<span class="won">(477,164)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_3_3" name="mk_0_3_3" onclick="victory.clickMarking(0,3,3)"><label for="mk_0_3_3"><span class="hidden">투표율</span>6.9%<span class="won">(188,549)</span></label></span></div></td><td id="rowSlipSelectCnt_3">-</td><td class="detailAreaTd"><button type="button" class="btnOn" title="4경기  울산현대 : 수원삼성 상세정보 열기"><span class="hidden">4경기  울산현대 : 수원삼성 상세정보 열기</span></button></td></tr><tr><td class="bdl0"><span class="db">5경기</span></td><td><span class="fs11">22.07.16 (토) 18:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>김천종합운동장</span></div></div></td><td><div class="vsDIv fwb"><div>김천상무</div><div><span class="center fwn">vs</span> 인천유나</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_4_1" name="mk_0_4_1" onclick="victory.clickMarking(0,4,1)"><label for="mk_0_4_1"><span class="hidden">투표율</span>39.8%<span class="won">(1,083,659)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_4_2" name="mk_0_4_2" onclick="victory.clickMarking(0,4,2)"><label for="mk_0_4_2"><span class="hidden">투표율</span>36.7%<span class="won">(997,876)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_4_3" name="mk_0_4_3" onclick="victory.clickMarking(0,4,3)"><label for="mk_0_4_3"><span class="hidden">투표율</span>23.5%<span class="won">(638,535)</span></label></span></div></td><td id="rowSlipSelectCnt_4">-</td><td class="detailAreaTd"><button type="button" class="btnOn" title="5경기  김천상무 : 인천유나 상세정보 열기"><span class="hidden">5경기  김천상무 : 인천유나 상세정보 열기</span></button></td></tr><tr><td class="bdl0"><span class="db">6경기</span></td><td><span class="fs11">22.07.16 (토) 19:00</span>

<div class="tooltipHBox"><button type="button" class="icoG stadium">경기장</button><div class="ttHLayer" tabindex="0"><span>도요타스타디움</span></div></div></td><td><div class="vsDIv fwb"><div>나고야</div><div><span class="center fwn">vs</span> 가와사키</div></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_5_1" name="mk_0_5_1" onclick="victory.clickMarking(0,5,1)"><label for="mk_0_5_1"><span class="hidden">투표율</span>13.2%<span class="won">(358,741)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_5_2" name="mk_0_5_2" onclick="victory.clickMarking(0,5,2)"><label for="mk_0_5_2"><span class="hidden">투표율</span>22.1%<span class="won">(599,794)</span></label></span></div></td><td><div class="formBox"><span class="btnChkList v6"><input type="checkbox" id="mk_0_5_3" name="mk_0_5_3" onclick="victory.clickMarking(0,5,3)"><label for="mk_0_5_3"><span class="hidden">투표율</span>64.8%<span class="won">(1,761,535)</span></label></span></div></td><td id="rowSlipSelectCnt_5">-</td><td class="detailAreaTd"><button type="button" class="btnOn" title="6경기  나고야 : 가와사키 상세정보 열기"><span class="hidden">6경기  나고야 : 가와사키 상세정보 열기</span></button></td></tr><tr><td class="bdl0">

	<tfoot>
			<tr>
				<td colspan="6">전체조합수</td>
				<td id="tdTotalSlipSelectCnt">-</td>
				<td></td>
			</tr>
		</tfoot>
	</table>			
</div>
	</div>
	</div>		
</div>
</div>	
</div>
</div>
<!-- content 영역 끝 -->	
					
<div id="asideRight">

<div class="asideGame asideFixed">
	<h3 class="blind">장바구니</h3>
	<ul class="tab" id="asideGameTab">
		<li class="selected"><a href="#none" id="asideGameTab0">구매하기<span class="txt blind">선택됨</span></a></li>
		<li>
			<a href="#none" id="asideGameTab1">카트내역 <em class="count" id="tabCartTotalCnt">0</em></a>
			<input type="hidden" id="calCartTotalCnt" value="">
		</li>
	</ul>

	<div class="asideGameCont tab1 selected" id="asideGame-1">
		<h4 class="blind">구매하기</h4><!-- 웹접근성_0605 -->
		<div class="setBox none" id="asideSetBox" style="display: none;">
			<span class="tit" id="asideGameTitle"></span>
			<button class="del" id="btnAsideGameCont">삭제하기</button>
		</div>
		<div class="scrolls mCustomScrollbar _mCS_1 mCS_no_scrollbar" id="tab1Scroll" style="height: 437px;"><div id="mCSB_1" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
			<div class="noneBox" id="asideNoneBox" style="height: 427px;">
				
				<strong>즐거운 스포츠, 즐거운 토토,<br>소액으로 건전하게 즐기세요.</strong>
				<p>
					베트맨 이외의 사이트를 통한 <br>투표권 발행 유사행위는 법으로 금지되며, <br>청소년 및 발행대상 운동경기 관계자는 <br>구매하거나 환급받을 수 없습니다.<br>
					<b style="color: #C4113C;">(환급 및 출금은 본인명의 계좌만 가능합니다.)</b>
				</p>
			
			</div>
	
		</div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
		
		<div class="totalBoxDef" id="sumAreaDef">
			<ul>
				<li class="totals">
					<strong>구매가능금액</strong>
					<em id="availableBuyAmountDef">50,000</em> <span class="text">원</span>
				</li>
			</ul>
		</div>

	</div>
	<div class="asideGameCont tab2" id="asideGame-2">
		<h4 class="blind">카트내역</h4><!-- 웹접근성_0605 -->
		
		
	</div>

	<div class="btnArea" id="asideGameTabBtn0">
		<button class="btn btnBB gray" onclick="rightA.insertToCartCheck();" disabled="">카트담기</button> 
		<button class="btn btnBB red" onclick="rightA.checkCart();" disabled="">바로구매</button>
	</div>
	
</div>
</div>
<!--  asideRight 영역 끝 -->
</div>
<!-- div articleArea 영역 끝  -->	


 <footer>
</footer>
</div>




</body>
</html>
