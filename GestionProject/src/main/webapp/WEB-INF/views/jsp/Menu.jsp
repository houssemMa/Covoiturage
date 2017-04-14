<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="Template.jsp"%>
<html>
<head>

<style>
.ui-widget-header, .ui-state-default, ui-button {
	background: #368BC1;
	border: 1px solid #E5E4E2;
	color: #FFFFFF;
	font-weight: bold;
}

 HEAD
th, td {
	padding: 7px;
}

.noclose .ui-dialog-titlebar-close {
	display: none;
}
.dec
{
width: 35px;
height: 32px;
}
</style>
</head>
<body>




	<div class="table-responsive" style="position: absolute; width: 100% ; height: 100%">
	<form:form  action="action" id="form">
	
	<input type="submit" name="ajoutStock"  hidden="true" id="ajout">
		<input type="submit" name="listStock"  hidden="true" id="listProduitSubmit">
			<input type="submit" name="bonDeLivraison"  hidden="true" id="bonDeLivraisonSubmit">
	
			<input type="submit" name="facture"  hidden="true" id="factureSubmit">
		<img src="resources/css/header.png" style="width: 100%"></img>
	
	
		<table class="table table-striped table table-hover table-bordered ">

			<tr>
				<td>
					<p class="cmp" style="float: left"></p>
					<!--  <p class="user" style="float: right; padding-right: 5%"></p>
					-->
					
   <div   class="dropdown"  style="float: right;padding-right: 5%" >

 
    				
    				<button type="submit" class=" button">Déconnexion</button>
	
</div>
			
					
					
			 
			</td>		
			</tr>


		</table>
		</form:form>
	</div>



	<div style="padding-top: 7%" class="table-responsive">
		

		<div class="well" style="width: 300px; padding: 8px 0; margin-top: 3%">
			<div style="overflow-y: scroll; overflow-x: hidden; height: 500px;">
				<ul class="nav nav-list">
					<li><a id="w"
						class="tree-toggler nav-header"
						style="font-style: italic; font-size: 13px">Ajout En Stock</a>
					<li class="divider"></li>
				</ul>
				<ul class="nav nav-list">
					<li><a id="listProduit"
						class="tree-toggler nav-header"
						style="font-style: italic; font-size: 13px">List Produit</a>
					<li class="divider"></li>
				</ul>
				<ul class="nav nav-list">
					<li><a id="facture"
						class="tree-toggler nav-header"
						style="font-style: italic; font-size: 13px">Facture</a>
					<li class="divider"></li>
				</ul>
					<ul class="nav nav-list">
					<li><a id="bonDeLivraison"
						class="tree-toggler nav-header"
						style="font-style: italic; font-size: 13px">Bon De Livraison</a>
					<li class="divider"></li>
				</ul>
				
			</div>
		</div>

	</div>

<script>

$( "#w" ).click(function() {
	
	
	$('#ajout').trigger("click");
		});

$( "#listProduit" ).click(function() {
	
	
	$('#listProduitSubmit').trigger("click");
		});


$( "#facture" ).click(function() {
	
	
	$('#factureSubmit').trigger("click");
		});
		
		

$( "#bonDeLivraison" ).click(function() {
	
	
	$('#bonDeLivraisonSubmit').trigger("click");
		});
</script>
	
</body>
<html>