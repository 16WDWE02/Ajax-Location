$(document).ready(function(){
	$('#Country').change(showCities);
});

function showCities(){

	var CountryID = $(this).val();
	alert(CountryID);
}