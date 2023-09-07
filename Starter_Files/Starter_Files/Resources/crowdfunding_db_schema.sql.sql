-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/780jZq
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CrowdfundingCampaign" (
    "cf_id:" INT   NOT NULL,
    "contact_id:" INT   NOT NULL,
    "company_name:" STRING   NOT NULL,
    "description:" STRING   NOT NULL,
    "goal:" FLOAT   NOT NULL,
    "pledged:" FLOAT   NOT NULL,
    "backers_count:" INT   NOT NULL,
    "country:" STRING   NOT NULL,
    "currency:" STRING   NOT NULL,
    "launch_date:" DATETIME   NOT NULL,
    "end_date:" DATETIME   NOT NULL,
    "category_id:" string   NOT NULL,
    "subcategory_id:" string   NOT NULL,
    CONSTRAINT "pk_CrowdfundingCampaign" PRIMARY KEY (
        "cf_id:"
     )
);

CREATE TABLE "Category" (
    "category_id:" STRING   NOT NULL,
    "category:" STRING   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id:"
     )
);

CREATE TABLE "Contact" (
    "contact_id:" INT   NOT NULL,
    "first_name:" STRING   NOT NULL,
    "last_name:" STRING   NOT NULL,
    "email:" STRING   NOT NULL,
    CONSTRAINT "pk_Contact" PRIMARY KEY (
        "contact_id:"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory_id:" STRING   NOT NULL,
    "subcategory:" STRING   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id:"
     )
);

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_contact_id:" FOREIGN KEY("contact_id:")
REFERENCES "Contact" ("");

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_category_id:" FOREIGN KEY("category_id:")
REFERENCES "Category" ("");

ALTER TABLE "CrowdfundingCampaign" ADD CONSTRAINT "fk_CrowdfundingCampaign_subcategory_id:" FOREIGN KEY("subcategory_id:")
REFERENCES "Subcategory" ("");

