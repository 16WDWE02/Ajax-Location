 <html>
 <head>
 	<meta charset="utf-8">
 	<title>Ajax Location Select</title>
 </head>
 <body>
 	<h1>Where do you live?</h1>

 	<select id="Country">
 		<option value="null">Please Select a Country</option>
 		<?php 
 			$dbc = new mysqli('localhost', 'root', '', 'AJAX_location');

 			$sql = "SELECT CountryName, CountryID FROM Country";

 			$result = $dbc->query($sql);

 			while($country = $result->fetch_assoc() ) : ?>
 			<option value="<?= $country['CountryID'] ?>"><?= $country['CountryName']?></option>
 			<?php endwhile; ?>
 	</select>

 	<select id="cities" name="cities"></select>

 	<select id="suburbs" name="suburbs"></select>

 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="js/countries-cities.js"></script>
 	<script src="js/cities-suburbs.js"></script>

 </body>
 </html>