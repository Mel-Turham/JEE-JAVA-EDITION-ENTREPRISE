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

	// �tablir la connexion � la base de donn�es
	Connection conn = DriverManager.getConnection(url, user, password);

	// Pr�parer la requ�te SQL
	PreparedStatement pst = conn.prepareStatement("INSERT INTO clients (nom, numero, adresse) VALUES (?, ?, ?)");
	pst.setString(1, nom);
	pst.setString(2, numero);
	pst.setString(3, adresse);

	// Ex�cuter la requ�te
	int result = pst.executeUpdate();

	if (result > 0) {
		out.println("Enregistrement r�ussi !");
	} else {
		out.println("Erreur lors de l'enregistrement !");
	}

} catch (Exception e) {
	e.printStackTrace();
}
%>
