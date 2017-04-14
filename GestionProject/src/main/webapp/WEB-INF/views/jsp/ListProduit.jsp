<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ include file="Template.jsp"%>
<!DOCTYPE html >
<html>
<head>
</head>



<body>
	<f:form method="post" modelAttribute="xx" action="affichage">
	<img src="resources/css/header.png" style="width: 100%"></img>

<div class="table-responsive" style="position: absolute; width: 100%">
			<table class="table table-striped table table-hover table-bordered ">
		<tr>
		<td> <button type="submit" id="return" name="menu"  class="button" style="margin-left: 2%"
							>Retour
						</button> 
						</td>
		
		</tr>
			</table>
		</div>
		
<input type="hidden"  name="id" id="gaap" />
  
 <input type="submit" id="boutonA" hidden="true" name="supprimer">

	 <input type="submit" id="boutonB" hidden="true" name="modifier">
	

<div id="dialog2"  title="Dialog Title" style="padding-top: 5%;margin-left: 5%">
		<div class="table-responsive" style="margin-top: 10%; margin-left: 2%;margin-right:2%; border: 2px solid #EEEEEE" id="divTableOnHold">

		<table id="myTable2" class="display table" >
		 <thead>
					<tr>
						<th hidden="true"> </th>
						<th>Designation</th>
						<th>Prix</th>
						<th>TVA</th>
							<th>Supprimer</th>
								<th>Modifier</th>
					</tr>

				</thead>
				<tbody>
					<c:forEach items="${liste}" var="produit">


						<tr>
							<td hidden="true"><label>${produit.id}</label></td>
							<td><label>${produit.designation} </label></td>
														<td><label>${produit.prix} </label></td>
																					<td><label>${produit.tva} </label></td>
							
							
							
<td > <button type="button" name="" 
				class="btn btn-primary supprimer" style="display: block;margin: auto;"
				><i class="glyphicon glyphicon-search"></i></button></td>
				
				<td > <button type="button" name="" 
				class="btn btn-primary modifier" style="display: block;margin: auto;"
				><i class="glyphicon glyphicon-search"></i></button></td>
				
				
		
		             </tr>  


		    </c:forEach>


		        </tbody> 
		    </table>

		</div>
		</div>



	</f:form>
	<script>
	

						
									var table = $('#myTable2').dataTable();

							
									$('#myTable2 tbody ').on(
											'click',
											'tr',
											function() {
												if ($(this).hasClass('selected')) {

													$(this).removeClass('selected');
												}

												else {

													table.$('tr.selected').removeClass(
															'selected');
													$(this).addClass('selected');

												}

												var name = $('td', this).eq(0).text();

												
												$( ".supprimer" ).click(function() {
												
													$('#gaap').val(name);
													
													$('#boutonA').trigger("click");
												});

												$( ".modifier" ).click(function() {
													
													$('#gaap').val(name);
													
													$('#boutonB').trigger("click");
												});

												
												
											});
	
	</script>

</body>
</html>
