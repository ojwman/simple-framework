<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jqgrid</title>

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery/ui.jqgrid-bootstrap4.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/> 
<script src="<%=request.getContextPath()%>/js/simpframework/jquery/jquery-1.11.0.min.js"></script>
<script src="<%=request.getContextPath()%>/js/simpframework/jquery/jquery.jqGrid.min.js"></script>
<script src="<%=request.getContextPath()%>/js/simpframework/jquery/i18n/grid.locale-en.js"></script>

</head>
<body>
	<table id='jqGrid'></table>
	<div id="jqGridPager"></div>

	<script type="text/javascript"> 
    // http://www.guriddo.net/demo/bootstrap/
		$(document).ready(function () {
            $("#jqGrid").jqGrid({
                url: 'http://trirand.com/blog/phpjqgrid/examples/jsonp/getjsonp.php?callback=?&qwery=longorders',
                mtype: "GET",
				styleUI : 'Bootstrap',
                datatype: "jsonp",
                colModel: [
                    { label: 'OrderID', name: 'OrderID', key: true, width: 75 },
                    { label: 'Customer ID', name: 'CustomerID', width: 150 },
                    { label: 'Order Date', name: 'OrderDate', width: 150 },
                    { label: 'Freight', name: 'Freight', width: 150 },
                    { label:'Ship Name', name: 'ShipName', width: 150 }
                ],
				viewrecords: true,
                height: 250,
                rowNum: 20,
                pager: "#jqGridPager"
            });
        });
   </script>
</body>
</html>