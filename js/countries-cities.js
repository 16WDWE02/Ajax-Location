$(document).ready(function(){
	$('#Country').change(showCities);
});

function showCities(){
	//Clear Both Cities and Suburbs select options when Country is changed
	$('#cities').html('');
	$('#suburbs').html('');

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

			//Clear the Cities select element
			$('#cities').html('');
			//Give Option a value of not a number (null)
			$('#cities').append('<option value='+'null'+'>'+'Please Select a City'+'</option>')	

			//Check to see if there was an error returning
			if(dataFromServer != 'error'){
				//Loop over the array
				for(var i=0; i<dataFromServer.length; i++){
					$('#cities').append('<option value='+dataFromServer[i].CityID+'>'+dataFromServer[i].CityName+'</option>')	
				}
			} else {
				$('#cities').append('<option value='+'>There is no Cities</option>')
			}
		},
		error: function(){
			console.log('Cannot connect to server....');
		}

	})

}