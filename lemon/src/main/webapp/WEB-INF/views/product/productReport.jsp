<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div><h1>신고하기</h1></div>
	<form id="reportForm" method="post" action="productReport.do">
		  <input type="hidden" id="productId" name="productId" value="${product.productId}">
		  <div>
			<label for="reportReporter"> 신고자 </label>
			<input type="text" id="reportReporter" name="reportReporter" value="${name}" readonly="readonly">
			<br>
			<label for="reportSuspect"> 용의자 </label>
			<input type="text" id="reportSuspect" name="reportSuspect" value="${product.productWriter}" readonly="readonly">
			<br>
			<label for="reportSuspect"> 신고 내용 </label>
			<input type="text" id="reportContent" name="reportContent" value="제목 :  ${product.productTitle} / 내용 : ${product.productSubject}" readonly="readonly">
			<br>
			<label for="replySecret">신고 분류</label>
			<select id="reportCategory" name="reportCategory">
				<option value="욕설및비방">욕설및비방</option>
				<option value="사기">사기</option>
				<option value="광고">광고</option>
				<option value="불법/부적절상품">불법/부적절상품</option>
				<option value="카테고리부적합">카테고리부적합</option>
				<option value="기타">기타</option>
			</select>
			<br>
			<label for="reportReason">신고 사유</label>
			<textarea rows="1" cols="100" id="reportReason" name="reportReason"></textarea>
		</div>
		<div>
			<button type="submit" class="btn btn-primary btn-outline btn-lg">신고</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-primary btn-outline btn-lg" onclick="window.close()">취소</button>&nbsp;&nbsp;
		</div>
	</form>
</body>
</html>