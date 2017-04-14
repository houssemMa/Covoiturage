<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ include file="Template.jsp"%>
<!DOCTYPE html >
<html>
<head>
<style>

table
{
border-collapse:collapse;
width:100%;
max-width:700px;
min-width:400px;
text-align:center;
}

caption
{
caption-side:bottom;
font-weight:bold;
font-style:italic;
margin:4px;
}

table,th, td
{
border: 1px solid gray;
}

th, td
{
height: 24px;
padding:4px;
vertical-align:middle;
}

th
{
background-image:url(table-shaded.png);
}

.rowtitle
{
background: #9CF;
font-weight:bold;
}

</style>

</head>



<body>
	<f:form method="post" modelAttribute="xx" action="bonDeLivraison">


<input type="hidden"  name="selected" id="gaap" />
  
<input type="hidden"  name="qte" id="qte" />
		<img src="resources/css/header.png" style="width: 100%"></img>
	
			<table class="table table-striped table table-hover table-bordered ">
		<tr>
		<td>
			<button type="button" id="x" class="button" style="float: left"
							>Valider
						</button> 
		<button type="submit" id="return" name="return"  class="button" style="float: left;margin-left: 3%"
							>Retour
						</button> </td>

		</tr>
		
	
			</table>
		
	<div style="padding-top: 10%;margin-left: 5%">
	
<table >
<caption></caption>
    <tr>
    <th>  </th>
    <td > N°</td>
						<td>Designation</td>
					
						<td>Quantite</td>
						
						<td>Choix</td>
						
 
    </tr>

<c:forEach items="${liste}" var="produit">


						<tr>
						<th></th>
							<td ><label>${produit.id}</label></td>
							<td><label>${produit.designation} </label></td>
														
														
														<td><div id="inputch">    <input type="text" id="check_data"  ></div></td>
							
				
<td ><div id="testCheck">       <input type="checkbox"  value="${produit.id}" />    </div> </td>
				
			</tr>
			</c:forEach>

</table>	
	
	</div>
	
	
	

<!-- <div id="dialog2"  title="Dialog Title"> -->
<!-- 		<div class="table-responsive" style="margin-top: 10%; margin-left: 2%;margin-right:2%; border: 2px solid #EEEEEE" id="divTableOnHold"> -->

<!-- 		<table id="myTable2" class="display table" > -->
<!-- 		 <thead> -->
<!-- 					<tr> -->
<!-- 						<th hidden="true"> </th> -->
<!-- 						<th>Designation</th> -->
<!-- 						<th>Prix</th> -->
<!-- 						<th>TVA</th> -->
<!-- 						<th>Quantite</th> -->
<!-- 						<th>Choix</th> -->
								
<!-- 					</tr> -->

<!-- 				</thead> -->
<!-- 				<tbody> -->
<%-- 					<c:forEach items="${liste}" var="produit"> --%>


<!-- 						<tr> -->
<%-- 							<td hidden="true"><label>${produit.id}</label></td> --%>
<%-- 							<td><label>${produit.designation} </label></td> --%>
<%-- 														<td><label>${produit.prix} </label></td> --%>
<%-- 									<td><label>${produit.tva} </label></td> --%>
														
<%-- 							<c:if test="${produit.tva eq 18}"> --%>
<!-- 							<td><div id="inputch">    <input type="text" id="check_data" ></div></td> -->
<%-- 							</c:if> --%>
<%-- 								<c:if test="${produit.tva eq 12}"> --%>
<!-- 							<td><div >    <input type="text"  readonly="readonly"></div></td> -->
<%-- 							</c:if> --%>
							
				
<%-- <td ><div id="testCheck">       <input type="checkbox"  value="${produit.id}" />    </div> </td> --%>
				
			
				
		
<!-- 		             </tr>   -->


<%-- 		    </c:forEach> --%>


<!-- 		        </tbody>  -->
<!-- 		    </table> -->

<!-- 		</div> -->
<!-- 		</div> -->


<input type="submit" name="valid" hidden="true" id="y">

	</f:form>
	<script>
	
	function colourize()
	{
	var dnl = document.getElementsByTagName("tr");
	for(i = 0; i < dnl.length; i++)
	{
	if((Math.round(i / 2) * 2) == ((i / 2) * 2) )
	dnl.item(i).style.background="#E8E8FF";
	}
	}
	window.onload = colourize;
	
	var e="";
	var qte="";
	$("#x").click(function() {
       
	      $("#inputch input").each(function() {
	          qte=qte+$(this).val()+',';
	                 	// qte=qte+$(this).val()+'    ';

	         	 $('#qte').val(qte);
	       	 
	         
	          });
	         
        
        $("#testCheck :checked").each(function() {
e=e+$(this).val()+',';

$('#gaap').val(e);








    });
        
    $('#y').trigger("click");
    });				
// 									var table = $('#myTable2').dataTable();

							
// 									$('#myTable2 tbody ').on(
// 											'click',
// 											'tr',
// 											function() {
// 												if ($(this).hasClass('selected')) {

// 													$(this).removeClass('selected');
// 												}

// 												else {

// 													table.$('tr.selected').removeClass(
// 															'selected');
// 													$(this).addClass('selected');

// 												}

// 												var name = $('td', this).eq(0).text();

												
										

												
												
// 											});
	
	</script>

</body>
</html>
