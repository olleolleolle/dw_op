
ALTER TABLE "main"."award_types" ADD COLUMN 	"repeatable"	INTEGER
ALTER TABLE "main"."award_types" ADD COLUMN 	"type"	INTEGER

-- this column will indicate groups local to Drachenwald (and hence they should show in the form)
ALTER TABLE "main"."groups" ADD COLUMN 	"local"	INTEGER

--which awards need to be shown
ALTER TABLE "main"."award_types" ADD COLUMN 	"recommendable"	INTEGER
update award_types set recommendable=1 where group_id in (1, 2, 3,4,5,25,27,30,42) and open = 1;
update award_types set recommendable=0 where id in (16, 27, 28, 29, 30, 49);

CREATE TABLE "award_categories" (
	"id"	INTEGER,
	"category"	TEXT,
	PRIMARY KEY("id")
);

INSERT INTO "main"."award_categories"("id","category") VALUES (1,"Arts & Sciences");
INSERT INTO "main"."award_categories"("id","category") VALUES (2,"Martial");
INSERT INTO "main"."award_categories"("id","category") VALUES (3,"Service");
INSERT INTO "main"."award_categories"("id","category") VALUES (4,"Other");

ALTER TABLE "main"."award_types" ADD COLUMN 	"category_id"	INTEGER
-- add foreign key constraint by hand

update award_types set category_id = 3 where recommendable = 1 and group_id in (1, 2, 3,4,5,25,27,30,42);
update award_types set category_id = 1 where id in (3,14,20,264,359);
update award_types set category_id = 2 where id in (5,12,13,21,263,361);
update award_types set category_id = 3 where id in (4,15,19,26,260,360);

