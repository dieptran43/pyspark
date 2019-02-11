CREATE TABLE bakery_basket (
    "id" int primary key IDENTITY(1,1) NOT NULL,
    "date" varchar(10) NOT NULL,
    "time" varchar(8) NOT NULL,
    "transaction" int NOT NULL,
    "item" varchar(50) NOT NULL
)

INSERT INTO "bakery_basket" ("date", "time", "transaction", "item") VALUES
	('2016-10-30','09:58:11',1,'Bread'),
	('2016-10-30','10:05:34',2,'Scandinavian'),
	('2016-10-30','10:07:57',3,'Hot chocolate');
