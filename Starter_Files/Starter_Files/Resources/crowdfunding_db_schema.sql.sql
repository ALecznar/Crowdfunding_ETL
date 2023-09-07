CREATE TABLE "CrowdfundingCampaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "currency" VARCHAR(255) NOT NULL,
    "launch_date" TIMESTAMP NOT NULL,
    "end_date" TIMESTAMP NOT NULL,
    "category_id" VARCHAR(255) NOT NULL,
    "subcategory_id" VARCHAR(255) NOT NULL,
    PRIMARY KEY ("cf_id")
);

CREATE TABLE "Category" (
    "category_id" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY ("category_id")
);

CREATE TABLE "Contact" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY ("contact_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR(255) NOT NULL,
    "subcategory" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY ("subcategory_id")
);

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_contact_id" FOREIGN KEY ("contact_id")
REFERENCES "Contact" ("contact_id");

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_category_id" FOREIGN KEY ("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_subcategory_id" FOREIGN KEY ("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");



SELECT *
FROM "CrowdfundingCampaign";

SELECT *
FROM "Category";

SELECT *
FROM "Contact";

SELECT *
FROM "Subcategory";

