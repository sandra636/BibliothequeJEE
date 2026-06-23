package co.kozao.bibliotheque.model;

public class Bibliothecaire {

    private int id;
    private String login;
    private String first;
    private String password;

    public Bibliothecaire() {}

    public Bibliothecaire(String login, String first, String password) {
        this.login = login;
        this.first = first;
        this.password = password;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getLogin() { return login; }
    public void setLogin(String login) { this.login = login; }

    public String getFirst() { return first; }
    public void setFirst(String first) { this.first = first; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

}