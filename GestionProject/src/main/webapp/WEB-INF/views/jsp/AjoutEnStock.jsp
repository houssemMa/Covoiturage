<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="Template.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>


</head>

<body>





	


	<f:form method="post" modelAttribute="produit" action="save">
	<img src="resources/css/header.png" style="width: 100%"></img>


<table class="table table-striped table table-hover table-bordered ">
		<tr><td><button type="submit" id="onhold" class="button" name="save"
							title="Save" >Enregistrer
						</button>
						
						<button type="submit" id="return" name="return"  class="button" style="margin-left: 3%"
							>Retour
						</button> 
						
						 </td>
		
		</tr>
			</table>


		<div style="padding-top: 5%" class="table-responsive">


			<table id="idTable"
				class="table table-striped table table-hover table-bordered "
				style="float: left; width: 40%; position: absolute">
				<tr>
					<td>Designation</td>



					<td><f:input type="text" path="designation" 
							class="style-4"
							 />
						</td>


				</tr>
				<tr>
					<td>Prix</td>
					<td><f:input type="text" path="prix"
							class="style-4" 
						/></td>

				</tr>
				<tr>
					<td>TVA</td>
					<td><f:input type="text" path="tva"
							class="style-4" 
							/></td>

				</tr>





			</table>


		</div>

</f:form>


		
	 

		










</body>
</html>
