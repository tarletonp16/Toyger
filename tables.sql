CREATE DATABASE IF NOT EXISTS Toyger;

USE Toyger;

CREATE TABLE users
(
UserID int not null auto_increment primary key,
FirstName varchar(25),
Surname varchar(25),
YearGroup int,
Instrument varchar(50),
username varchar(50),
userpassword varchar(100)
); 

CREATE TABLE rooms
(
RoomID int not null auto_increment primary key,
RoomNumber int,
RoomDescription varchar(255)
);

CREATE TABLE bookings
(
BookingID int not null auto_increment primary key,
BookingMade timestamp,
UserID int not null,
RoomID int not null,
DateStart datetime,
DateTimeFinish datetime,
foreign key (UserID) references users(UserID)
ON UPDATE CASCADE
ON DELETE RESTRICT,
foreign key (RoomID) references rooms(RoomID)
ON UPDATE CASCADE
ON DELETE RESTRICT
); 
