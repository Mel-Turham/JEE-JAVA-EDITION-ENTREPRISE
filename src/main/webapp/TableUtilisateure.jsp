<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Liste des Clients</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	text-decoration: none;
	font-family: arial;
}

body {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	width: 100%;
	gap:20px;
	padding: 0 40px
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

a {
	color: white;
	padding: 5px 10px;
	background-color: red;
	width: fit-content;
	border-radius: 6px;
}
</style>
</head>
<body>
	<h1>Liste des Clients</h1>
	<table>
		<tr>
			<th>Nom</th>
			<th>Numéro</th>
			<th>Adresse</th>
		</tr>
		<%
		try {
			// Charger le driver MySQL
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Établir la connexion à la base de données
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/users", "root", "");

			// Préparer la requête SQL
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT nom, numero, adresse FROM clients");

			// Parcourir les résultats et les afficher dans la table
			while (rs.next()) {
				String nom = rs.getString("nom");
				String numero = rs.getString("numero");
				String adresse = rs.getString("adresse");
		%>
		<tr>
			<td><%=nom%></td>
			<td><%=numero%></td>
			<td><%=adresse%></td>
		</tr>
		<%
		}

		// Fermer la connexion
		rs.close();
		stmt.close();
		con.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</table>
	<a href="./index.jsp">Retour a la page d'enregistremant</a>
</body>
</html>
