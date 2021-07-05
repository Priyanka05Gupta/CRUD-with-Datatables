<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee DataTable</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/b-1.6.5/b-html5-1.6.5/b-print-1.6.5/datatables.min.css"/>
 <script src="http://code.jquery.com/jquery-1.10.2.js"></script>  
<!--       <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>   -->
 
    <!--Import jQuery before export.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!--Data Table-->
    <script type="text/javascript"  src=" https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<!--     <script type="text/javascript"  src=" https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script> -->
 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<!-- <script type="text/javascript" src="https://cdn.datatables.net/v/dt/b-1.6.5/b-html5-1.6.5/b-print-1.6.5/datatables.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css"> -->

<!-- <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script> -->


     <!-- Javascript -->  
      <script type="text/javascript"> 
    	 $(document).ready( function () { 
  			$('#empList').DataTable({
  				pageLength :2,
  				ajax : {
  					url : 'findAll',
  					dataSrc : ''
  				},
  				columns : [
  				{
  					title : 'First Name',
  					data : 'first_name'
  				}, {
  					title : 'Last Name',
  					data : 'last_name'
  				}, {
  					title : 'Joining Date',
  					data : 'joining_date'
  				},{
  					title : 'Salary',
  					data : 'salary'
  				},{
  					title : 'Gender',
  					data : 'gender'
  				},{
  					title : 'City',
  					data : 'city'
  				},{
  					title : 'Action',
                    data  : 'id', "width": "50px", "render": function (data) {
                            return '<a class="popup" href="/employees/findByIdForUpdate?id='+data+'">Update</a>';
                        }
                }]
  			})
  			$('.tablecontainer').on('click', 'a.popup', function (e) {
                e.preventDefault();
                OpenPopup($(this).attr('href'));
            })
;
 		 });   
      </script>  

</head>
<body>
		<table id="empList" class="cell-border" style="width:100%"></table>
</body>
</html>