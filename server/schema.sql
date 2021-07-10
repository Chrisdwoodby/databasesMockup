CREATE DATABASE chat;
USE chat;



CREATE TABLE users (
  USERID int NOT NULL,
  UserName varchar (200) NOT NULL,
  PRIMARY KEY (USERID)
);

CREATE TABLE rooms (
  ROOMID int NOT NULL,
  Roomname varchar (200) NOT NULL,
  PRIMARY KEY (ROOMID)
);

CREATE TABLE messages (
  ID int NOT NULL,
  Messages varchar (255) NOT NULL,
  USERID int NOT NULL,
  ROOMID int NOT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT fk_users FOREIGN KEY (USERID) REFERENCES users (USERID),
  CONSTRAINT fk_rooms FOREIGN KEY (ROOMID) REFERENCES rooms (ROOMID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

