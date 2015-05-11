<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//cdn.datatables.net/1.10.6/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.6/css/jquery.dataTables.min.css">
<title>Insert title here</title>
</head>
<body>
	<table id="openCasesTable" class="display compact" cellspacing="0">
		<thead>
			<tr class="headers">
				<th>First Name</th>
				<th>Last Name</th>
				<th>Plan Name</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>
<script>
$(document).ready(function(){
	$('#openCasesTable').DataTable({
		ajax: '/telephone/openCases.htm',
		type: 'GET',
		columns: [
        	{
        		"data": null,
	        	"render": function(data, type, row, meta) {
	        		return '<a href="" onClick="return loadCaseDetail()">' + data.firstName + '</a>';
	        	}
        	},
        	{
        		"data": null,
	        	"render": function(data, type, row, meta) {
	        		return '<a href="" onClick="return loadCaseDetail()">' + data.lastName + '</a>';
	        	}
        	},
        	{
        		"data": "groupName"
        	},
        	{
        		"data": null,
  	    	  	"render": function(data, type, row, meta) {
  	    		  return '<center>' + data.status + '</center>';
  	    	  	}
        	}
		]
	});
});
</script>