package bd;


import java.sql.*;

public class ConnexionDB {
private Connection connexion;
private Statement instruction;
protected ResultSet resultat;

public ConnexionDB() {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/messagerie_db","root","159753");
		instruction = connexion.createStatement();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
}
public void lire(String requete) {
	try {
		resultat=instruction.executeQuery(requete);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public void miseAJour(String requete) {
	try {
		instruction.executeUpdate(requete);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

public boolean suivant() {
	try {
		return resultat.next();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	
}
public void arret() {
	try {
		connexion.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}





}
