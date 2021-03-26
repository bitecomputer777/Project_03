<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반품교환정보</title>
<link rel='stylesheet' type='text/css' href= 'main.css'>
</head>
<body>
<div>
<table id='change'>
<tr>
<td id='changetit'><br>반품, 교환정보
<br><br>
</td>
</tr>

<tr>
<td><br>
반품배송비반품/교환 배송비(편도 3,000원)<br>
보내실곳17399 경기도 이천시 진상미로 2170-56 진상미로 2170-56 주현푸드
<br><br>
</td>
</tr>

<tr>
<td>
<br>
거래 조건에 대한 정보<br>
1소화물 택배의 배송은 발송일로부터 1~2 영업일이 소요되나, 지역/대형 화물/설치/예약/발송지체 등의 특이사항에 따라 배송기간은 달라질 수 있습니다. <br>
2상품의 특성과 거래조건에 따라 청약철회(변심반품/취소)가 일부 제한되거나 청약철회에 소요되는 비용이 다르게 책정될 수 있습니다. 반품/교환 불가사유 보기<br>
3청약철회는 상품 수령일로부터 7일 이내에 신청하실 수 있으며, 판매자는 ‘전자상거래등에서의소비자보호에관한법률’이 정하는 바에 따른 지연이자 지급의 책임이 있습니다.<br>
4제품 사용 상 불만과 피해보상에 관하여는 제조사, 수입원, 판매자 등에게 문의하여주시기 바라며, 당사의 고객센터로 문의 주시면 관계법령과 규정에 부합하는 기준에 따라 문제 해결에 도움을 드리겠습니다. <br>
5거래에 관한 약관은 판매자의 상품 상세설명 화면과 당사 이용약관(링크)에서 확인하실 수 있습니다
<br><br>
</td>
</tr>

<tr> <td>판매자명</td>  <td> 에이케이에스앤디(주)AK인터넷쇼핑몰  </td></tr>
<tr><td>상호/대표자</td>  <td> ${rs.name }</td></tr>
<tr><td>연락처</td>   <td>${rs.tel} </td></tr>
<tr><td>응대가능시간</td>  <td>${rs.teltime }</td></tr>
<tr><td>E-mail</td>  <td> ${rs.email }</td></tr>
<tr><td>FAX</td>  <td> ${rs.fax }</td></tr>
<tr><td>사업자 등록번호</td>  <td>${rs.codenum }</td></tr>
<tr><td>통신판매업</td>   <td> ${rs.address1 } </td></tr>
<tr><td>영업소재지</td>  <td>  ${rs.address2 }</td></tr>



<tr>
<td>
<br>
주의사항 <br>
전자상거래 등에서의 소비자보호법에 관한 법률에 의거하여 미성년자가 체결한 계약은<br>
법정대리인이 동의하지 않은 경우 본인 또는 법정대리인이 취소할 수 있습니다.<br>
지마켓에 등록된 판매상품과 상품의 내용은 판매자가 등록한 것으로 ㈜이베이코리아에서는<br>
그 등록내역에 대하여 일체의 책임을 지지 않습니다.<br>
<br>
</td>
</tr>


</table>
</div>




</body>
</html>