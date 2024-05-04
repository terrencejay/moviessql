CREATE TABLE "Tickets" (
  "upc" SERIAL,
  "product_amount" INTEGER,
  "order_id" SERIAL PRIMARY KEY
);

alter table "Tickets" 
add column "title" VARCHAR(200);

select * from "Tickets" 

insert into "Tickets" (
	upc
) values(
	1
);


insert into "Tickets" (product_amount,
order_id)
values(9.99, 234);

insert into "Tickets" (
	title
) values ('the land before time');

update "Tickets"
set "product_amount" = 10
where "upc" = 1;

CREATE TABLE "Consessions" (
  "order_id" SERIAL,
  "order_date" DATE DEFAULT CURRENT_DATE,
  "sub_total" NUMERIC(8,2),
  "total_cost" NUMERIC(10,2),
  "cart_id" INTEGER,
  PRIMARY KEY ("order_id"),
  CONSTRAINT "FK_Consessions_order_id"
    FOREIGN KEY ("order_id")
    REFERENCES "Tickets"("order_id")
);

insert into "Consessions" (
	order_id,
	order_date,
	sub_total,
	total_cost,
	cart_id
) values (
	1,
	('2024-05-03'),
	13.54,
	15.00,
	123
);

select * from "Consessions";



CREATE TABLE "Movies" (
  "movie_id" SERIAL,
  "movie_length" INTEGER,
  "movir_name" VARCHAR(100),
  "upc" INTEGER,
  "seller_id" INTEGER,
  PRIMARY KEY ("movie_id")
);

alter table "Movies"
rename COLUMN movir_name to movie_name;

insert into "Movies" (
	movie_id,
	movie_length,
	movie_name,
	upc,
	seller_id
) values (
	1,
	163,
	'The land before time',
	1738,
	2319
);
insert into "Movies" (
	movie_id,
	movie_length,
	movie_name,
	upc,
	seller_id
) values (
	2,
	173,
	'Friday after next',
	1638,
	2317
);

select * from "Movies" ;


CREATE TABLE "Cart" (
  "cart_id" serial,
  "customer_id" integer,
  PRIMARY KEY ("cart_id")
);

CREATE TABLE "Customer" (
  "customer_id" Serial,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "billing_info" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Brand" (
  "seller_id" Serial,
  "brand_name" VARCHAR(150),
  "contact_number" VARCHAR(15),
  "address" VARCHAR(150),
  PRIMARY KEY ("seller_id")
);

select * from "Customer"

insert into "Customer"(
	first_name,
	last_name,
	address,
	billing_info
)values(
	'Terrence',
	'Sardin',
	'1234 lane ave',
	'123-123-123-123-0534 05/12');
select * from "Customer";

drop table "Brand" 

