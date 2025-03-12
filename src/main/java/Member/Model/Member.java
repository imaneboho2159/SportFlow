package Member.Model;

public class Member {
    private int id;
    private String name;
    private String email;
    private String password;
    private String date_De_naissance;
    private String sport_prateque;

    public Member(int id, String name, String email, String password, String date_De_naissance, String sport_prateque) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.date_De_naissance = date_De_naissance;
        this.sport_prateque = sport_prateque;
    }

    public Member(String name, String email, String password, String date_De_naissance, String sport_prateque) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.date_De_naissance = date_De_naissance;
        this.sport_prateque = sport_prateque;
    }

    public Member() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getDate_De_naissance() {
        return date_De_naissance;
    }

    public void setDate_De_naissance(String date_De_naissance) {
        this.date_De_naissance = date_De_naissance;
    }

    public String getSport_prateque() {
        return sport_prateque;
    }

    public void setSport_prateque(String sport_prateque) {
        this.sport_prateque = sport_prateque;
    }
}

