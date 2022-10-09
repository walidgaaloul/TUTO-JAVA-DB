package bd;

import java.sql.SQLException;

public class ListeMessages extends ConnexionDB {
public ListeMessages(int idPersonne) {
	lire("SELECT * FROM message WHERE idPersonne = "+idPersonne);
}

public String sujet() {
	try {
		return resultat.getString("sujet");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}

}

public String text() {
	try {
		return resultat.getString("text");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return null;
	}

}

}
