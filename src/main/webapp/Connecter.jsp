<%@ page import="java.sql.*"%>
<%
String nom = request.getParameter("nom");
String numero = request.getParameter("numero");
String adresse = request.getParameter("adresse");

try {
	//configuration a la bd 
	String url = "jdbc:mysql://localhost/users";
	String user = "root";
	String password = "";

	// Charger le driver MySQL
	Class.forName("com.mysql.cj.jdbc.Driver");

	// Établir la connexion à la base de données
	Connection conn = DriverManager.getConnection(url, user, password);

	// Préparer la requête SQL
	PreparedStatement pst = conn.prepareStatement("INSERT INTO clients (nom, numero, adresse) VALUES (?, ?, ?)");
	pst.setString(1, nom);
	pst.setString(2, numero);
	pst.setString(3, adresse);

	// Exécuter la requête
	int result = pst.executeUpdate();

	if (result > 0) {
		out.println("Enregistrement réussi !");
	} else {
		out.println("Erreur lors de l'enregistrement !");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
