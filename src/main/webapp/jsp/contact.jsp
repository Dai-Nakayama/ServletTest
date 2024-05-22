<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせフォーム</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/servlet/contact", method="post">
	
	<p>氏名</p>
	<input type="text" name="username">
	
	<p>会社名</p>
	<input type="text" name="company">
	
	<p>メールアドレス</p>
	<input type="text" name="mail-address">
	
	<p>お問い合わせ内容</p>
	<p><textarea name="message" cols="30" rows="10"></textarea></p>
	
	<p>メルマガ種類</p>
	<input type="checkbox" name="magazine" value="総合案内">総合案内
	<input type="checkbox" name="magazine" value="セミナー案内">セミナー案内
	<input type="checkbox" name="magazine" value="求人採用情報">求人採用情報

	<p>資料請求希望</p>
	<p><input type="radio" name="file" value="Yes">Yes</p>
	<p><input type="radio" name="file" value="No">No</p>
	
	<p><input type="submit" value="送信"></p>
</form>
</body>
</html>
