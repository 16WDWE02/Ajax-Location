$(document).ready(function(){
	$('#Country').change(showCities);
});

function showCities(){

	var CountryID = $(this).val();

	//Make sure that ID is a number
	if(isNaN(CountryID)){
		return;
	}

	//Prepare AJAX
	$.ajax({
		type: 'get',
		url: 'app/countries-cities.php?countryID='+CountryID,
		success: function(dataFromServer){
			console.log(dataFromServer);
		},
		error: function(){
			console.log('Cannot connect to server....');
		}

	})

}