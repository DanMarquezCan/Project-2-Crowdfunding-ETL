CREATE TABLE "category" (
    "category_id" VARCHAR(10) NOT NULL PRIMARY KEY,
    "category" VARCHAR(25) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20) NOT NULL PRIMARY KEY,
    "sub-category" VARCHAR(50) NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INTEGER NOT NULL PRIMARY KEY,
    "first_name" VARCHAR(30) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "email" VARCHAR(100) NOT NULL
);
CREATE TABLE "campaign" (
    "cf_id" INTEGER NOT NULL PRIMARY KEY,
    "contact_id" INTEGER NOT NULL REFERENCES "contacts" ("contact_id"),
    "company_name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(200) NOT NULL,
    "goal" NUMERIC NOT NULL,
    "pledged" NUMERIC NOT NULL,
    "outcome" VARCHAR(20) NOT NULL,
    "backers_count" INTEGER NOT NULL,
    "country" VARCHAR(10) NOT NULL,
    "currency" VARCHAR(10) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(20) NOT NULL REFERENCES "category" ("category_id"),
    "subcategory_id" VARCHAR(20) NOT NULL REFERENCES "subcategory" ("subcategory_id")
);







