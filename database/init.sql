CREATE DATABASE AH_3214;

CREATE TABLE user(
    user_idX VARCHAR(45) AUTO_INCREMENT NOT NULL,
    user_id VARCHAR(45) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_name VARCHAR(20) NOT NULL,
    user_address VARCHAR(50) NOT NULL
);

CREATE TABLE dog(
    dog_id VARCHAR(45) NOT NULL,
    user_idx VARCHAR(45) NOT NULL,
    dog_name VARCHAR2(20) NOT NULL,
    dog_birth DATETIME NOT NULL,
    dog_idx VARCHAR(15) NOT NULL,
    PRIMARY KEY(dog_idx);
);