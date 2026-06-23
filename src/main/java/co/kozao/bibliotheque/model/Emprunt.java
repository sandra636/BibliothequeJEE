package co.kozao.bibliotheque.model;

import java.util.Date;

public class Emprunt {

    private int id;
    private int livreId;
    private String title;
    private String borrower;
    private Date loanDate;
    private Date returnloanDate;
    

    public Emprunt() {}

    public Emprunt(int livreId, String title, String borrower, Date loanDate, Date returnloanDate) {
        this.livreId = livreId;
        this.title = title;
        this.borrower = borrower;
        this.loanDate = loanDate;
        this.returnloanDate = returnloanDate;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getLivreId() { return livreId; }
    public void setLivreId(int livreId) { this.livreId = livreId; }
    
    public String getTitle() { return title;}
    public void setTitle (String title) { this.title = title; }

    public String getBorrower() { return borrower; }
    public void setBorrower(String borrower) { this.borrower = borrower; }

    public Date getLoanDate() { return loanDate; }
    public void setLoanDate(Date loanDate) { this.loanDate = loanDate; }

    public Date getReturnloanDate() { return returnloanDate; }
    public void setReturnloanDate(Date returnloanDate) { this.returnloanDate = returnloanDate; }
}