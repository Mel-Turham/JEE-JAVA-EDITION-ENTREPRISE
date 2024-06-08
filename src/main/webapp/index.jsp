<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enregistrement des clients</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration:none;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f1f1f1;
	height: 100vh;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

h1 {
	text-align: center;
	font-size: 24px;
	text-transform: uppercase;
}

.form-container {
	display: flex;
	flex-direction: column;
	gap: 1rem;
	background-color: #2263a4;
	border-radius: 5px;
	padding: 2rem;
	color: white;
	padding: 2rem;
}

.form-input-row {
	display: flex;
	flex-direction: column;
	gap: 5px;
}

input {
	padding: 10px 4px;
	dispaly: block;
	margin-bottom: 5px;
}

button {
	border: none;
	display: block;
	width: 100%;
	padding: 10px 4px;
	background-color: #6893E8;
	margin-top: 8px;
	font-size: 16px;
	font-weight: bold;
	color: white;
}

a{
 color:white;
 padding:5px 10px;
 background-color:red;
 width:fit-content;
 border-radius:6px;
}
</style>
</head>
<body>
	<div class="form-container">
		<h1>Enregistrement des clients</h1>

		<form action="Connecter.jsp" method="post">

			<div class="form-input-row">
				<label id="nom">Nom</label> <input type="text" name="nom">
			</div>
			<div class="form-input-row">
				<label id="numero">Numero</label> <input type="text" name="numero">
			</div>
			<div class="form-input-row">
				<label id="adresse">adresse</label> <input type="text"
					name="adresse">
			</div>
			<button type="submit">Enregistrer</button>
		</form>

		<a href="./TableUtilisateure.jsp">Voir les enregistrements</a>
	</div>
</body>
</html>