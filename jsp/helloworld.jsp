<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'helloworld.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery/jquery-1.8.3.min.js"></script>
	<style type="text/css">
		span{
			margin-right:20px;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			
			$.ajax({
				url:"queryDate.do",
				type:"post",
				dataType:"json",
				success:function(dataBack){
					var data = "";
					for(var i=0;i<dataBack.length;i++){
						data += "<div>";
						data += "<span>"+dataBack[i].hello+"</span>";
						data += "<span>"+dataBack[i].world+"</span>";
						data += "<span>"+dataBack[i].nuan+"</span>";
						data += "<span>"+dataBack[i].yang+"</span>";
						data += "</div>";
					}
					$('#data').html(data);
				}
			});
			
		})
	</script>
  </head>
  
  <body>
    get !!
    <div id="data"></div>
  </body>
</html>
