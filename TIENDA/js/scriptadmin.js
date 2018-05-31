// JavaScript Document
function validarusuarioalta()
{
    valid = true;
	$("#errorLogin").hide("slow");
	if (document.forminsertar.Login.value == ""){
		$("#errorLogin").show("slow");
	    valid = false;
	}
	   
	
	$("#errorPass").hide("slow");
	if (document.forminsertar.Password.value == ""){
		$("#errorPass").show("slow");
	    valid = false;
	}
	  
	
	$("#errorCorreo").hide("slow");
	if (document.forminsertar.Correo.value == ""){
		$("#errorCorreo").show("slow");
	    valid = false;
	}
	  
	
	$("#errorTel").hide("slow");
	if (document.forminsertar.Telefono.value == ""){
		$("#errorTel").show("slow");
	    valid = false;
	}
	
	
	valid = true;
	$("#errorNom").hide("slow");
	if (document.forminsertar.Nombre.value == ""){
		$("#errorNom").show("slow");
	    valid = false;
	}
	
	
	
	valid = true;
	$("#errorApe").hide("slow");
	if (document.forminsertar.Apellidos.value == ""){
		$("#errorApe").show("slow");
	    valid = false;
	}
	
	
	valid = true;
	$("#errorDir").hide("slow");
	if (document.forminsertar.Direccion.value == ""){
		$("#errorDir").show("slow");
	    valid = false;
	}
	
	
	
	valid = true;
	$("#errorNom").hide("slow");
	if (document.forminsertar.Nombre.value == ""){
		$("#errorNom").show("slow");
	    valid = false;
	}
	return valid;
}



function validarusuarioeditar()
{
    valid = true;
	$("#errorLogin").hide("slow");
	if (document.forminsertar.Login.value == ""){
		$("#errorLogin").show("slow");
	    valid = false;
	}
	  
	
	
	$("#errorCorreo").hide("slow");
	if (document.forminsertar.Correo.value == ""){
		$("#errorCorreo").show("slow");
	    valid = false;
	}
	 
	
	$("#errorTel").hide("slow");
	if (document.forminsertar.Telefono.value == ""){
		$("#errorTel").show("slow");
	    valid = false;
	}
	
	
	valid = true;
	$("#errorNom").hide("slow");
	if (document.forminsertar.Nombre.value == ""){
		$("#errorNom").show("slow");
	    valid = false;
	}
	
	
	
	valid = true;
	$("#errorApe").hide("slow");
	if (document.forminsertar.Apellidos.value == ""){
		$("#errorApe").show("slow");
	    valid = false;
	}
	
	
	valid = true;
	$("#errorDir").hide("slow");
	if (document.forminsertar.Direccion.value == ""){
		$("#errorDir").show("slow");
	    valid = false;
	}
	
	
	
	valid = true;
	$("#errorNom").hide("slow");
	if (document.forminsertar.Nombre.value == ""){
		$("#errorNom").show("slow");
	    valid = false;
	}
	
	return valid;
}