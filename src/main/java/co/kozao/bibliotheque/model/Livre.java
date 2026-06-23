package co.kozao.bibliotheque.model;

public class Livre {
	private int id;
	private int categorieId;
	private String title;
	private String author;
	private String isbn;
	private String available;
	
	public int getId() {
		return this.id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategorieId() {
		return this.categorieId;
	}
	public void setCategorieId(int categorieId) {
		this.categorieId = categorieId;
	}
	public String getTitle() {
		return this.title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return this.author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsbn() {
		return this.isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getAvailable() {
		return this.available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}

	public Livre(){
		
	}
	
	private int id;
	private int categorieId;
	private String title;
	private String author;
	private String isbn;
	private boolean available;

	public Livre() {
		
	}
	
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategorieId() {
		return this.categorieId;
	}

	public void setCategorieId(int categorieId) {
		this.categorieId = categorieId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public boolean getAvailable() {
		return this.available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

}
