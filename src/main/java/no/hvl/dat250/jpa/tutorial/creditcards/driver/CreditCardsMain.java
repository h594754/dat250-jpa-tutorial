package no.hvl.dat250.jpa.tutorial.creditcards.driver;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import no.hvl.dat250.jpa.tutorial.creditcards.*;

import java.util.ArrayList;
import java.util.Collection;

public class CreditCardsMain {

  static final String PERSISTENCE_UNIT_NAME = "jpa-tutorial";

  public static void main(String[] args) {
    try (EntityManagerFactory factory = Persistence.createEntityManagerFactory(
        PERSISTENCE_UNIT_NAME); EntityManager em = factory.createEntityManager()) {
      em.getTransaction().begin();
      createObjects(em);
      em.getTransaction().commit();
    }

  }

  private static void createObjects(EntityManager em) {

      Customer c = new Customer();
      Address a = new Address();
      CreditCard cc1 = new CreditCard();
      Pincode pin = new Pincode();
      CreditCard cc2 = new CreditCard();
      Bank b = new Bank();

      c.setName("Max Mustermann");
      a.setStreet("Inndalsveien");
      a.setNumber(28);
      cc1.setNumber(12345);
      cc1.setBalance(-5000);
      cc1.setCreditLimit(-10000);
      pin.setCode("123");
      pin.setCount(1);
      cc2.setNumber(123);
      cc2.setBalance(1);
      cc2.setCreditLimit(2000);
      b.setName("Pengebank");

      c.addAdresses(a);

      c.addCreditCards(cc1);
      c.addCreditCards(cc2);

      System.out.println("CREDIT CARDS" + c.getCreditCards());

      a.addOwners(c);

      b.addCreditCard(cc1);
      b.addCreditCard(cc2);

      cc1.setPincode(pin);
      cc2.setPincode(pin);

      cc1.setOwningBank(b);
      cc2.setOwningBank(b);

      em.persist(c);
      em.persist(a);
      em.persist(cc1);
      em.persist(cc2);
      em.persist(pin);
      em.persist(b);










  }
}
