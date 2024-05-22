<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>フォーム送信結果</title>
</head>
<body>
	<h2>フォーム送信結果</h2>
	<p>以下はフォームで選択されたデータです。</p>
	
	<p>
		氏名:
		<%=request.getAttribute("username")%></p>
	<p>
		会社名:
		<%=request.getAttribute("company")%></p>
	<p>
		メールアドレス:
		<%=request.getAttribute("mail-address")%></p>
	<p>
		お問合せ内容:
		<%=request.getAttribute("message")%></p>
 
	<h3>メルマガ種類</h3>
	<%
	String[] magazine = (String[]) request.getAttribute("magazine");
	if (newsletters != null) {
		for (String magazine : magazine) {
			out.println("<p>" + magazine + "</p>");
		}
	} else {
		out.println("<p>なし</p>");
	}
	%>
 
	<h3>資料請求希望</h3>
	<p><%=request.getAttribute("file") != null ? request.getAttribute("file") : "選択されていません"%></p>
</body>
</html>