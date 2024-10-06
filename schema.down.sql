
    set client_min_messages = WARNING;

    alter table if exists CreditCard 
       drop constraint if exists FKnwxb2pvuwnkoifgrp2d14pla0;

    alter table if exists CreditCard 
       drop constraint if exists FKfky0y471d7n8cebc1oe28idci;

    alter table if exists creditcard_customer 
       drop constraint if exists FKptxyr0vnii5mwst66it3wjofh;

    alter table if exists creditcard_customer 
       drop constraint if exists FKiysp2mx4dhvp9gmm37ue40m6g;

    alter table if exists customer_address 
       drop constraint if exists FK4n1t9cnxhkev5vdbedu0ao068;

    alter table if exists customer_address 
       drop constraint if exists FK7dy564lg4tac3m50d3ws4mhc4;

    alter table if exists Customer_CreditCard 
       drop constraint if exists FKlsjp44vhufgo7x9ua27827f39;

    alter table if exists Customer_CreditCard 
       drop constraint if exists FKbcd9tsn3uxf491h4bv3vo023m;

    drop table if exists Address cascade;

    drop table if exists Bank cascade;

    drop table if exists CreditCard cascade;

    drop table if exists creditcard_customer cascade;

    drop table if exists Customer cascade;

    drop table if exists customer_address cascade;

    drop table if exists Customer_CreditCard cascade;

    drop table if exists Pincode cascade;

    drop table if exists Todo cascade;

    set client_min_messages = WARNING;

    alter table if exists CreditCard 
       drop constraint if exists FKnwxb2pvuwnkoifgrp2d14pla0;

    alter table if exists CreditCard 
       drop constraint if exists FKfky0y471d7n8cebc1oe28idci;

    alter table if exists creditcard_customer 
       drop constraint if exists FKptxyr0vnii5mwst66it3wjofh;

    alter table if exists creditcard_customer 
       drop constraint if exists FKiysp2mx4dhvp9gmm37ue40m6g;

    alter table if exists customer_address 
       drop constraint if exists FK4n1t9cnxhkev5vdbedu0ao068;

    alter table if exists customer_address 
       drop constraint if exists FK7dy564lg4tac3m50d3ws4mhc4;

    alter table if exists Customer_CreditCard 
       drop constraint if exists FKlsjp44vhufgo7x9ua27827f39;

    alter table if exists Customer_CreditCard 
       drop constraint if exists FKbcd9tsn3uxf491h4bv3vo023m;

    drop table if exists Address cascade;

    drop table if exists Bank cascade;

    drop table if exists CreditCard cascade;

    drop table if exists creditcard_customer cascade;

    drop table if exists Customer cascade;

    drop table if exists customer_address cascade;

    drop table if exists Customer_CreditCard cascade;

    drop table if exists Pincode cascade;

    drop table if exists Todo cascade;
