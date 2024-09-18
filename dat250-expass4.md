## Issues
I had some issues with understanding some of the issues I was facing with Collections being immutable when initialized as ArrayLists.
Solved it by setting the Collections to Sets with HashSets. 

<br>
Had some issues with imports in the start but that was solved by building the gradle project once more. 


## Link to code
https://github.com/h594754/dat250-jpa-tutorial/


## DB
I inspected the database by setting the show_sql to true in persistence.xml. 
<br>
I also inspected them by looking at the different entities and ManyToMany relationships that I created. While also looking at the domain model that was provided.  

##### The tables that was created: 
- Bank 
- creditCard
- creditcard_customer (Many to Many)
- Customer
- Customer_CreditCard (Many to Many)
- Pincode
