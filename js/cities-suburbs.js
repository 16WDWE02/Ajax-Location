$(document).ready(function(){
	$('#cities').change(showSuburbs);
});

function showSuburbs(){
	//Clear Suburbs select options when Country is changed
	$('#suburbs').html('');

	//Get the City ID
	var CityID = $(this).val();

	//Make sure that ID is a number
	if(isNaN(CityID)){
		return;
	}

	$.ajax({
		type: 'get',
		url: 'app/cities-suburbs.php?cityID='+CityID,
		success: function(dataFromServer){

			//Clear the Suburbs select element
			$('#suburbs').html('');
			//Give Option a value of not a number (null)
			$('#suburbs').append('<option value='+'null'+'>'+'Please Select a Suburb'+'</option>')	

			//Check to see if there was an error returning
			if(dataFromServer != 'error'){
				//Loop over the array
				for( var i=0; i<dataFromServer.length; i++){
					$('#suburbs').append('<option value='+dataFromServer[i].SuburbID+'>'+dataFromServer[i].SuburbName+'</option>');
				}
			} else {
				$('#suburbs').append('<option value='+'>There is no Suburbs</option>')
			}

		},
		error: function(){
			console.log('Cannot connect to server....');
		}
	})
}