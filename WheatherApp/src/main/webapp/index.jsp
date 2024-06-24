<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weather App - Weather Details</title>
<link rel="stylesheet" href="jsp-style.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

 <style>
 	
 	body {
    font-family: Arial, sans-serif;
    background-image: url('https://wallpapers.com/images/featured/sky-mvehfqz6w2ges2dj.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    padding: 0;
}

 a {
            color: skyblue; 
        }

.container {
    width: 90%;
    max-width: 700px;
    margin: 40px auto;
    background-color: rgba(255, 255, 255, 0.8);
    /* Semi-transparent white background */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.container h2 {
	text-align: center;
}
h1 {
    text-align: center;
    color: #333;
}

.temp-city {
    margin: 10px 0;
    padding: 5px 0;
}

.weather-image-container {
    margin-top: 20px;
    text-align: center;
}

.weather-image-container img {
    max-width: 50%;
    height: auto;
    border-radius: 10px;
}



.weather-info {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Center align horizontally */
    align-items: center; /* Center align vertically */
}

.weather-info p {
    margin: 8px 0;
    padding: 8px 0;
    flex-basis: 48%;
    text-align: center; /* Center-align text */
}


.weather-info i {
    margin-right: 10px;
}

form {
    margin-top: 20px;
    text-align: center;
}

input[type="text"] {
    width: calc(100% - 120px);
    padding: 10px;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
	margin: 16px 12px;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

footer {
    text-align: center;
    margin-top: 30px;
    font-size: 14px;
    padding: 16px 20px;
}

footer p {
    margin: 0;
    color : white;
}

.footer-container {
	background-color: rgba(0, 0, 0, 0.7); /* Darken the container background */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

/* Media Queries */
@media screen and (max-width: 768px) {
    .container {
        width: 95%;
        padding: 15px;
    }

    .weather-info p {
        flex-basis: 100%;
    }

    input[type="text"] {
        width: calc(100% - 20px);
    }
}
 
 </style>

</head>
<body>

	<div class="container">
		<h1>Weather Details</h1>

		<div class="weather-image-container">
			<img id="weather-icon" src="images/image1.png" alt="Weather Image">
			<div class="temp-city">
				<h2>
					<i class="fas fa-city"></i> ${city}
				</h2>
				<h2>
					<i class="fas fa-thermometer-half"></i> ${temperature}&deg;C
				</h2>
			</div>
		</div>

		<div class="weather-info">
			<p>
				<i class="fas fa-calendar-alt"></i> Date: ${date}
			</p>
			<p>
				<i class="fas fa-clock"></i> CurrentTime: ${currentTime}
			</p>
			<p>
				<i class="fas fa-cloud-sun"></i> Condition: ${weatherCondition}
			</p>
			<p>
				<i class="fas fa-eye"></i> Visibility: ${visibility}km
			</p>
			<p>
				<i class="fas fa-wind"></i> WindSpeed: ${windSpeed}km/hr
			</p>
			<p>
				<i class="fas fa-cloud"></i> CloudCover: ${cloudCover}%
			</p>
		</div>

		<div class="container">
			<h2>Find Other Places Weather</h2>
			<form id="weatherForm" action="MyServlet" method="post">
				<input type="text" id="city" name="city"
					placeholder="E.g., Bhopal, Mumbai, Paris">
				<button type="submit">Get Weather</button>
				<p id="errorMsg"
					style="color: red; padding: 6px 6px; display: none;">Please
					enter the name of the place.</p>

			</form>
		</div>
	</div>

	<script src="script.js"></script>
</body>

<footer>
	<div class="footer-container">
		<p>Developed by Devashish Sharma in 2024 | Follow me on <a href="https://www.instagram.com/___devashish45___" target="_blank">@Instagram</a>
		and <a href="https://github.com/devashish7697" target="_blank">@Github</a>	</p>
	</div>
</footer>
</html>