<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/js/jquery-1.11.2.min.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/css/jquery.dataTables.min.css"/>">
<script type="text/javascript" src="<c:url value="/js/dataTables.tableTools.js"/>"></script>
</head>
<body>
	<table id="firstTable">
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Anjib</td>
				<td>Man</td>
			</tr>
			<tr>
				<td>Kunjini</td>
				<td>Rajbhandari</td>
			</tr>
		</tbody>
	</table>
<br>
<br>
	<table id="secondTable">
		<thead>
			<tr>
				<th>Home Phone</th>
				<th>Work Phone</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>4092256216</td>
				<td>4098322482</td>
			</tr>
			<tr>
				<td>4094347817</td>
				<td>5155551234</td>
			</tr>
		</tbody>
	</table>
</body>
</html>

<script>
$(document).ready(function() {
    $('#firstTable').DataTable({
    	"dom": 'Tt',
    	"ordering": false,
        "tableTools": {
            "sSwfPath": "../swf/copy_csv_xls_pdf.swf"
        }
    });
    $('#secondTable').DataTable();
} );
</script>