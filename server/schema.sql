CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  user_id int(10) NOT NULL auto_increment,
  username varchar(20),
  PRIMARY KEY(user_id)
);

CREATE TABLE rooms (
  room_id int(10) NOT NULL auto_increment,
  roomname varchar(20),
  PRIMARY KEY(room_id)
);

CREATE TABLE messages (
  message_id int(10) NOT NULL auto_increment,
  user_id int(10),
  room_id int(10),
  message_text text,
  PRIMARY KEY(message_id),
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

