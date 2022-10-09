package bd;

public class Personne extends ConnexionDB {
	private String nom;
	private String prenom;
	private String motDePasse;
	
	public Personne () {
		
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom.toUpperCase();
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	
	
public boolean enregistrer() {
	if(existdeja()) {
		return false;
	} else {
		miseAJour("INSERT INTO personne (nom,prenom,motDePasse)" + "VALUES (\""+nom+"\",\""+prenom+"\",\""+motDePasse+"\")");
		return true;
	}
}

private boolean existdeja() {
	lire("SELECT * FROM personne WHERE nom=" +nom+"AND prenom=" +prenom);
	return suivant();
}

}
