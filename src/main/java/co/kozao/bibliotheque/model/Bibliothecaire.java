package co.kozao.bibliotheque.model;

public class Bibliothecaire {

    private int id;
    private String login;
    private String fist;
    private String password;

    public Bibliothecaire() {}

    public Bibliothecaire(String login, String fist, String password) {
        this.login = login;
        this.setFist(fist);
        this.password = password;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getLogin() { return login; }
    public void setLogin(String login) { this.login = login; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

	public String getFist() {
		return fist;
	}

	public void setFist(String fist) {
		this.fist = fist;
	}
}