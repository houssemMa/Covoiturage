<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ include file="Template.jsp"%>
<html>
<head>
<title>Login Page</title>


<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}



</style>
</head>
<body >
<div >


	<img src="resources/css/header.png" style="width: 100%"></img>


	<div class="table-responsive" style="position: absolute; width: 100%">
			<table class="table table-striped table table-hover table-bordered ">
		<tr>
		<td></td>
		
		</tr>
			</table>
		</div>



















	<div id="authentification">

	<c:if test="${not empty error}">
			<div class="error1">${error}</div>
		</c:if>


		<f:form modelAttribute="user"
			action="authentification" method='POST'>
		
       
            <div class="panel panel-info" style="width: 110%">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger "></div>
                            
<!--                         <form id="loginform" class="form-horizontal" role="form"> -->
                                    
                                    
                                    	<div class="table-responsive" >
			
                                 
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"></span>
                                        <input id="login-username" type="text" class="form-control" name="name"  placeholder="Username">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="Password">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    </div>
                                



                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class=" " style="float: right;padding-right: 5%;">
                                  
<input name="submit" type="submit"
						value="Login" class="btn btn-primary " style="float: right;"/>
                                    </div>
                                </div>

 </div>
                                
<!--                             </form>      -->



                        </div>                     
                    </div>  
       
        
  

    
		</f:form>
	
</div>
</div>
</body>
</html>
