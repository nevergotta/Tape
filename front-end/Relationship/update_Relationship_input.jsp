<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.relationship.model.*"%>
<%
	RelationshipVO relationshipVO = (RelationshipVO) request.getAttribute("relationshipVO");
%>
<%-- <%=relationshipVO==null%> --%>
<html>
<head>
<meta charset="UTF-8">
<title>交友狀態資料修改</title>
<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>
</head>
<body bgcolor='white'>
<table id="table-1">
	<tr><td>
		 <h3>員工資料修改 - update_black_list_input.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/pic.jpg" width="100" height="32" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料修改:</h3>

<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/back-end/Relationship/relationship.do" name="form1">
<table>
	<tr>
		<td>交友狀態編號:<font color=red><b>*</b></font></td>
		<td><%=relationshipVO.getFrdrela_uid()%></td>
	</tr>
	<tr>
		<td>邀請好友會員:</td>
		<td><input type="TEXT" name="frdinv_memid" size="45" value="<%=relationshipVO.getFrdinv_memid()%>" /></td>
	</tr>
	<tr>
		<td>受邀會員:</td>
		<td><input type="TEXT" name="frdbeinv_memid" size="45"	value="<%=relationshipVO.getFrdbeinv_memid()%>" /></td>
	</tr>
	<tr>
		<td>交友狀態:</td>
		<td><input type="TEXT" name="frdinv_sts" size="45"	value="<%=relationshipVO.getFrdinv_sts()%>" /></td>
	</tr>


</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="frdrela_uid" value="<%=relationshipVO.getFrdrela_uid()%>">
<input type="submit" value="送出修改"></FORM>
</body>
</html>