CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id int NOT NULL auto_increment,
  username varchar(40) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE messages (
  id int NOT NULL auto_increment,
  userid int NOT NULL,
  text varchar(200) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES users(id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

