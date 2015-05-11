<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
$(document).ready(function(){
	$.ajax({
		type: 'GET',
		url: '/abc/showTablePage.htm',
		success: function(response) {
			('#empty_content').empty().html(response);
		}
	});
});
</script>