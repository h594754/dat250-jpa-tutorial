package no.hvl.dat250.jpa.tutorial.creditcards;

import java.util.*;

import jakarta.persistence.*;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @ManyToMany(cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "customer_address",
            joinColumns = @JoinColumn(name = "customer_id"),
            inverseJoinColumns = @JoinColumn(name = "address_id")
    )
    private Set<Address> addresses = new HashSet<>();

    @OneToMany
    private Set<CreditCard> creditCards = new HashSet<>();

    public Customer() {
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Address> getAdresses() {
        return addresses;
    }




    public String getName() {
        return name;
    }

    public Set<Address> getAddresses() {
        return addresses;
    }

    public Set<CreditCard> getCreditCards() {
        return creditCards;
    }

    public void addCreditCards(CreditCard c) {
        creditCards.add(c);

    }

    public void addAdresses(Address a) {
        addresses.add(a);
        a.getOwners().add(this);

    }
}
