<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<button type="button" onclick="get()">get방식 ajax요청</button>
	
	<script>
		function get() {
			
			// get방식은 데이터를 쿼리스트링으로 보냄
			fetch("hello.ajax?name=홍길동&age=20")
				.then(response => {
					return response.json();
				})
				.then(data => {
					console.log(data);
				});
			
		}
	
	</script>
	
	<hr>
	
	<button type="button" onclick="post()">post방식 ajax요청</button>
	
	<script>
	
		function post() {
			
			fetch("bye.ajax", {
				method: "POST",
				headers: {
					"Content-Type": "application/json"
					//"Content-Type": "application/x-www-form-urlencoded" // 폼 방식
				},
				body: JSON.stringify({name: "홍길동", age: 20})
				//body: "name=홍길동&age=20"
			})
			.then(function(response) {
				return response.json();
			})
			.then(function(data) {
				console.log(data);
			});
		}	
	
	</script>

</body>
</html>