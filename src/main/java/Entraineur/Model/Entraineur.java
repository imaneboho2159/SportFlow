package Entraineur.Model;

public class Entraineur {

    private int id;
    private String nom;
    private String email;
    private String password;
    private String specialite;

    public Entraineur(int id, String nom, String email, String password, String specialite) {

        this.id = id;
        this.nom = nom;
        this.email = email;
        this.password = password;
        this.specialite = specialite;
    }

    public Entraineur(String nom, String email, String password, String specialite) {

        this.nom = nom;
        this.email = email;
        this.password = password;
        this.specialite = specialite;
    }

    public Entraineur() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSpecialite() {
        return specialite;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }
}
