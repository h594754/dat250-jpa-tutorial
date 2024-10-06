
    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table creditcard_customer (
        creditcard_id bigint not null,
        customer_id bigint not null,
        primary key (creditcard_id, customer_id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table customer_address (
        address_id bigint not null,
        customer_id bigint not null,
        primary key (address_id, customer_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists creditcard_customer 
       add constraint FKptxyr0vnii5mwst66it3wjofh 
       foreign key (customer_id) 
       references Customer;

    alter table if exists creditcard_customer 
       add constraint FKiysp2mx4dhvp9gmm37ue40m6g 
       foreign key (creditcard_id) 
       references CreditCard;

    alter table if exists customer_address 
       add constraint FK4n1t9cnxhkev5vdbedu0ao068 
       foreign key (address_id) 
       references Address;

    alter table if exists customer_address 
       add constraint FK7dy564lg4tac3m50d3ws4mhc4 
       foreign key (customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        id bigint generated by default as identity,
        owningBank_id bigint,
        pincode_id bigint,
        primary key (id)
    );

    create table creditcard_customer (
        creditcard_id bigint not null,
        customer_id bigint not null,
        primary key (creditcard_id, customer_id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table customer_address (
        address_id bigint not null,
        customer_id bigint not null,
        primary key (address_id, customer_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    create table Todo (
        id bigint generated by default as identity,
        description varchar(255),
        summary varchar(255),
        primary key (id)
    );

    alter table if exists CreditCard 
       add constraint FKnwxb2pvuwnkoifgrp2d14pla0 
       foreign key (owningBank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists creditcard_customer 
       add constraint FKptxyr0vnii5mwst66it3wjofh 
       foreign key (customer_id) 
       references Customer;

    alter table if exists creditcard_customer 
       add constraint FKiysp2mx4dhvp9gmm37ue40m6g 
       foreign key (creditcard_id) 
       references CreditCard;

    alter table if exists customer_address 
       add constraint FK4n1t9cnxhkev5vdbedu0ao068 
       foreign key (address_id) 
       references Address;

    alter table if exists customer_address 
       add constraint FK7dy564lg4tac3m50d3ws4mhc4 
       foreign key (customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;
