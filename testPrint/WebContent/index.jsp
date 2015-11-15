<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-ui/external/jquery/jquery.js"></script>

<script src="js/jquery-ui/jquery-ui.min.js"></script>
<link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">






<script>
	$(document).ready(function() {
		if($('[name="msg"]').val()!=""){
			alert($('[name="msg"]').val());
		}		
	});

	var dd;
	
	$(function(){
		dd = $("#dialog").dialog({
			autoOpen : false,			
			buttons:{
				"add user":add1,
				Cancel:function(){
					dd.dialog("close");
				}
			}
		});		
	});

	function submit1() {
		var y = confirm("do you want to submit?");
		if (y == true) {
			$("#aa").submit();
		} else {
			alert("cancel");
		}

	}
	function add() {
		dd.dialog("open");
		
	}
	function add1() {
		$("#tb tbody").append(
				'<tr><td><input type="text" name="name" value="'+$('[name="name1"]').val()+'"></td></tr');
		$('[name="name1"]').val("");
	}
	function myFunction() {
		window.print();
	}
</script>
</head>
<body>
<input type="hidden" name="msg" value="${requestScope['smg']}">
	<p id="ss">Click the button to print the current page.</p>

	<button onclick="myFunction()">Print this page</button>
	<form action="submit" id="aa" method="post">
		<table id="tb">
			<tbody>
				
			</tbody>
		</table>
		<input type="button" value="add" onclick="add();"> <input
			type="button" value="submit" onclick="submit1();">
	</form>

	<div id="dialog" title="Basic dialog">
		<input type="text" name="name1">
	</div>
</body>
</html>