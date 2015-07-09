function jsBuscaCep(element_cep, element_estado, element_cidade, element_rua) {

var cep = document.getElementById( element_cep ).value;

$.getJSON("/enderecos/busca_por_cep/" + cep,
  function ( data ) {
  	
      console.log(data);
      
      uf=data.uf;
      cidade = data.cidade;
      bairro = data.bairro;
      rua = data.tipo_logradouro + ' ' + data.logradouro;
      
      //$("#animal_rua").val(bairro);
      $('#'+element_rua).val(rua);
      
      //Recupera json com a estado a partir do cep digitado
	  var estadoOption = 'estado='+ uf;
	  $.getJSON("/find_by_sigla_estado", estadoOption, function(j) {
	  var optionsEstado = '';
	  console.log(optionsEstado);
	  $.each(j.est, function(i, item) {
        optionsEstado += '<option value="' + item.id + '">' + item.sigla + '</option>';
				estado_id = item.id;
      });
	  
	  $('#'+element_estado).html(optionsEstado);
	  
	  });
      
    //Recupera json com a cidade a partir do cep digitado
	  var cidadeOption = "cidade="+ cidade;
		
	  $.getJSON("/find_by_nome_cidade", cidadeOption, function(j) {
	  var optionsCidade = '';
	  console.log(optionsCidade);
	  $.each(j.cid, function(i, item) {
        optionsCidade += '<option value="' + item.id + '">' + item.cidade + '</option>';
      });
	  
	  $('#'+element_cidade).html(optionsCidade);
	  	  
	  });

  }
);

}

/*
function showPosition(position)
{
	
console.log(position.coords.latitude);
console.log(position.coords.longitude);

var lat = parseFloat(position.coords.latitude);
var lng = parseFloat(position.coords.longitude);
var latlng = new google.maps.LatLng(lat, lng);

geocoder = new google.maps.Geocoder();
geocoder.geocode({'latLng': latlng}, function(dataLocation, status) {
	if (status == google.maps.GeocoderStatus.OK) {
	
		console.log('cep '+ dataLocation[0].address_components[6].long_name)
		console.log('Estado '+ dataLocation[0].address_components[4].long_name)
		console.log('Cidade '+ dataLocation[0].address_components[3].long_name)
		
		estado=dataLocation[0].address_components[4].long_name;
		cidade=dataLocation[0].address_components[3].long_name;
		cep=dataLocation[0].address_components[7].long_name;
		
		processaEstadoCidade(estado,cidade,cep);
		console.log(dataLocation)
		
		document.getElementById( "usuario_cep" ).value = cep;
		console.log( "data location success urlApiGoogle");
	}
});

}

function showError(error)
{
	switch(error.code)
  {
  	case error.PERMISSION_DENIED:
    	alert("é necessário ter acesso a dados de localização, você será redirecionado para informar de forma manual");
   	 break;
  	case error.POSITION_UNAVAILABLE:
    	alert("Location information is unavailable.");
   	 break;
  	case error.TIMEOUT:
    	alert("The request to get user location timed out.");
    	break;
  	case error.UNKNOWN_ERROR:
    	alert("An unknown error occurred.");
    	break;
  }
  
 var urlEstadoCidade = "/local_estado_cidade";
 console.log(urlEstadoCidade);
	
	$(window.document.location).attr('href',urlEstadoCidade);		
	 
}

*/

function dadosLocalizacao(dataLocation, elementoCep)
{
	
	console.log('cep '+ dataLocation[0].address_components[6].long_name)
	console.log('Estado '+ dataLocation[0].address_components[4].long_name)
	console.log('Cidade '+ dataLocation[0].address_components[3].long_name)
	
	estado=dataLocation[0].address_components[4].long_name;
	cidade=dataLocation[0].address_components[3].long_name;
	cep=dataLocation[0].address_components[7].long_name;
	
	processaEstadoCidade(estado,cidade,cep);
	console.log(dataLocation)
	
	elementoCep.value = cep;
	console.log( "data location success urlApiGoogle");
	
}


function processaEstadoCidade(estado,cidade,cep)
{
  	 var urlEstadoCidade = "/sessions_localizacao/estado_cidade_acesso_usuario?estado="+estado + "&cidade="+cidade+"&cep="+cep;
 console.log(urlEstadoCidade);
		
 $.getJSON(urlEstadoCidade,
    function ( dataResult ) {
    	console.log( "data session sucess urlEstadoCidade");
	    }
	  );
}
  
  


