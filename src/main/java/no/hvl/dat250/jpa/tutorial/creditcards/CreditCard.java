package no.hvl.dat250.jpa.tutorial.creditcards;

import jakarta.persistence.*;


import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
public class CreditCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Integer number;
    private Integer creditLimit;
    private Integer balance;

    @ManyToMany
    @JoinTable(
            name = "creditcard_customer",
            joinColumns = @JoinColumn(name = "creditcard_id"),
            inverseJoinColumns = @JoinColumn(name = "customer_id")
    )
    private Set<Customer> owners;

    @ManyToOne
    private Pincode pincode;

    @ManyToOne
    private Bank owningBank;

    public CreditCard() {
        this.owners = new HashSet<>();
    }

    public Long getId() {
        return id;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public void setCreditLimit(Integer creditLimit) {
        this.creditLimit = creditLimit;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public void setPincode(Pincode pincode) {
        this.pincode = pincode;
    }

    public void setOwningBank(Bank owningBank) {
        this.owningBank = owningBank;
    }

    public Integer getNumber() {
        return number;
    }

    public Integer getBalance() {
        return balance;
    }

    public Integer getCreditLimit() {
        return creditLimit;
    }

    public Pincode getPincode() {
        return pincode;
    }

    public Bank getOwningBank() {
        return owningBank;
    }

    public Set<Customer> getOwners() {
        return owners;
    }

    public void setOwners(Set<Customer> owners) {
        this.owners = owners;
    }
}
