CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "name" VARCHAR(50),
  "email_address" VARCHAR(50),
  "phone_number" VARCHAR(30),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Movie" (
  "movie_id" SERIAL,
  "movie_title" VARCHAR(30),
  "movie_genre" VARCHAR(20),
  "release_date" DATE,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "Ticket" (
  "ticket_id" SERIAL,
  "seat_number" VARCHAR(10),
  "ticket_price" VARCHAR(20),
  "customer_id" INTEGER,
  "movie_id" INTEGER,
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_Ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Ticket.movie_id"
    FOREIGN KEY ("movie_id")
      REFERENCES "Movie"("movie_id")
);

CREATE TABLE "Concession" (
  "concession_id" SERIAL,
  "product_name" VARCHAR(30),
  "product_price" NUMERIC(6,2),
  "ticket_id" INTEGER,
  PRIMARY KEY ("concession_id"),
  CONSTRAINT "FK_Concession.ticket_id"
    FOREIGN KEY ("ticket_id")
      REFERENCES "Ticket"("ticket_id")
);

