
-- USER SQL
CREATE USER "3214DBPROJECT" IDENTIFIED BY "1234"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

-- QUOTAS
ALTER USER "3214DBPROJECT" QUOTA 10M ON "USERS";

-- ROLES
GRANT "DBA" TO "3214DBPROJECT" ;
GRANT "CONNECT" TO "3214DBPROJECT" ;
GRANT "RESOURCE" TO "3214DBPROJECT" ;

-- SYSTEM PRIVILEGES

CREATE TABLE users(
    user_idx int NOT NULL,
    user_id VARCHAR(40) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    PRIMARY KEY(user_idx)
);

CREATE TABLE DOG(
    dog_idx int NOT NULL,
    dog_name VARCHAR(45) NOT NULL,
    dog_birth DATE NOT NULL,
    user_idx int NOT NULL,
    PRIMARY KEY(dog_idx)
);

CREATE TABLE HOSPITAL(
    hospital_idx int NOT NULL,
    hospital_name VARCHAR(50) NOT NULL,
    hospital_address VARCHAR(50) NOT NULL,
    hospital_rate VARCHAR(5) NOT NULL,
    PRIMARY KEY(hospital_idx)
);

CREATE TABLE REVIEW(
    review_idx int NOT NULL,
    hospital_idx int NOT NULL,
    user_idx int NOT NULL,
    review_rate VARCHAR(5) NOT NULL,
    review_title VARCHAR(50) NOT NULL,
    review_body VARCHAR(500) NOT NULL,
    review_date DATE NOT NULL,
    PRIMARY KEY(review_idx)
);


CREATE SEQUENCE IDX_INCREMENT INCREMENT BY 1 START WITH 1 MINVALUE 1;