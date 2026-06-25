package co.kozao.bibliotheque.model;

import java.sql.Date;

public class Emprunt {

    private int id;
    private int livreId;
    private String title;
    private Date loanDate;
    private String borrower;
    private Date returnloanDate;
    private int categorieId;

    public Emprunt() {}

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getLivreId() { return livreId; }
    public void setLivreId(int livreId) { this.livreId = livreId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public Date getLoanDate() { return loanDate; }
    public void setLoanDate(Date loanDate) { this.loanDate = loanDate; }

    public String getBorrower() { return borrower; }
    public void setBorrower(String borrower) { this.borrower = borrower; }

    public Date getReturnloanDate() { return returnloanDate; }
    public void setReturnloanDate(Date returnloanDate) { this.returnloanDate = returnloanDate; }

    public int getCategorieId() { return categorieId; }
    public void setCategorieId(int categorieId) { this.categorieId = categorieId; }
}