create database DMA_project;
use DMA_project


create table City(Cname char(15),State char(50),Country char(30),primary key(Cname));
insert  into City values ('Louiseville','Kentunky','United States');
insert  into City values ('Chandigarh','Punjab','India');
insert  into City values ('Fort Worth','Texas','United States');
insert  into City values ('Delhi','Delhi','India');
insert  into City values ('San Francisco','California','United States');
insert  into City values ('Mumbai','Maharastra','India');
insert  into City values ('Frankfurt','Hesse','Germany');
insert  into City values ('New York City','New York','United States');
insert  into City values ('Goa','Goa','India');
insert  into City values ('chennai','chennai','India');
insert  into City values ('Chicago','Illinois','United States');
insert  into City values ('Cape Town','western Cape','South Africa');
insert  into City values ('Vancouver','British Columbia','Canada');
insert  into City values ('cancum','Quintana','Mexico');
insert  into City values ('Wakola','Santacruz','Hawai');
desc city;
select * from City;
drop table City;
create table Airport2(AP_name char(100),State char(50),Country char(30),Cname Char(15),primary key (AP_name),Foreign key (Cname) references City(Cname));
insert into Airport2 values('Louiseville International Airport','Kentunky','United States','Louiseville');
insert into Airport2 values('Chandigarh International Airport','Punjab','India','Chandigarh');
insert into Airport2 values('Delles/New Fort International Airport','Texas','United States','Fort Worth');
insert into Airport2 values('Indira Gandhi International Airport','Delhi','India','Delhi');
insert into Airport2 values('San Francisco International Airport','California','United States','San Francisco');
insert into Airport2 values('Chattrapati shivaji International Airport','Maharashtra','India','Mumbai');
insert into Airport2 values('New York City International Airport','New York','United States','New York City');
insert into Airport2 values('Goa International Airport','Goa','India','Goa');
insert into Airport values('chennai International Airport','chennai','India','Chennai');
insert into Airport2 values('Chicago International Airport','Illinois','United States','Chicago');
insert into Airport2 values('Cape Town International Airport','Western Cape','South Africa','Cape Town');
insert into Airport2 values('Vancouver International Airport','British Columbia','Canada','Vancouver');
insert into Airport2 values('cancum International Airport','Quintana','Mexico','cancum');
insert into Airport values('Wakola International Airport','Santacruz','Hawai','Wakola');
delete from Airport2 where AP_name='chattrapati shivaji maharaj airport';
select * from Airport2;
desc Airport2;
rename table Airport2 to Airport
select * from Airport;
drop table Airport;
create table Airline( airline_id char(3) not null, airline_name char(50),Three_digit_code varchar(3) ,primary key(airline_id));
insert into Airline values('AA','American Airlines','001');
insert into Airline values('AI','Air India Limited','098');
insert into Airline values('LH','Lufthansa','220');
insert into Airline values('BA','British Airways','125');
insert into Airline values('JA','Jet Airways','589');
insert into Airline values('QR','Qatar Airlines','157');
insert into Airline values('EK','Emirates','176');
insert into Airline values('EY','Ethiad Airways','607');
insert into Airline values('DL','Delta Airlines','036');
insert into Airline values('AF','Air France','128');
insert into Airline values('TK','Turkish Airlines','079');
insert into Airline values('AC','Air Canada','752');
insert into Airline values('AU','Australian Airlines','257');
Select * from Airline;
alter table Airline add unique(airline_name);
desc Airline;
create table Contains (airline_id char(3) not null,AP_name char(100),primary key(airline_id,AP_name),foreign key(airline_id) references Airline(airline_id),foreign key (AP_name) references Airport(AP_name));
insert into Contains values('AA','San Francisco International Airport');
insert into Contains values('BA','Louiseville International Airport');
insert into Contains values('JA','cancum International Airport');
insert into Contains values('JA','Chattrapati Shivaji International Airport');
insert into Contains values('JA','Indira Gandhi International Airport');
insert into Contains values('AF','Chennai International Airport');
insert into Contains values('DL','Chattrapati Shivaji International Airport');
insert into Contains values('AI','Chicago International Airport');
insert into Contains values('QR','Delles/New Fort International Airport');
insert into Contains values('AU','Vancouver International Airport');
select * from Contains;
desc Contains
truncate table Contains;
drop table Contains
create table Flight(Flight_code varchar(10) not null, source char(3),destination char(4),arrival varchar(10),departure varchar(10),status char(10), duration varchar(30),FlightType varchar(10),No_Of_Stops int,airline_id char(3),primary key (Flight_code),foreign key (airline_id) references airline(airline_id))
insert into Flight values('AI2014','BOM','DFW','02:15','03:15','On-Time','24hrs','Connecting',3,'AI');
insert into Flight values('QR2305','BOM','DFW','13:15','13:55','Deplayed','21hrs','Non-stop',0,'QR');
insert into Flight values('EY1234','JFK','TPA','19:20','20:15','On-Time','16hrs','Connecting',5,'EY');
insert into Flight values('LH9876','JFK','TPA','05:50','06:35','On-Time','16hrs','Non-stop',0,'LH');
insert into Flight values('AF7468','VIE','MUN','22:00','13:45','On-Time','23hrs','Direct',3,'AF');
insert into Flight values('DL1235','CPT','DEL','22:15','23:15','On-Time','23hrs','Direct',0,'DL');
insert into Flight values('AI5628','GOA','DEL','23:00','13:45','On-Time','23hrs','Direct',0,'AI');
insert into Flight values('AF7461','MUN','SFO','23:15','00:15','On-Time','23hrs','Direct',0,'AF');
insert into Flight values('DL1236','TAH','VIE','23:30','00:45','On-Time','23hrs','Direct',0,'DL');
insert into Flight values('AC4788','SFO','CHG','12:15','13:15','Cancelled','23hrs','Direct',0,'AC');
insert into Flight values('TK3098','CHN','CHG','22:15','23:15','On-Time','23hrs','Direct',3,'TK');
insert into Flight values('AI2221','BOM','DEL','!5:00','18:00','On-Time','3hrs','Direct',0,'JA');
select * from Flight
desc Flight
drop table Flight
update Flight set status='Cancelled' where Flight_code='TK3098'
update Flight set status='Delayed' where Flight_code='DL1236'
alter table Flight add column No_of_stops int
alter table Flight drop column No_of_stops
create table employee1(ssn int not null,fname varchar(20),lname varchar(20),address varchar(100),phone int,age int, sex char(1),jobtype varchar(30),astype varchar(30),etype char(30),shift varchar(20),position varchar(30),AP_name char(100),primary key(ssn),foreign key(AP_name) references airport(AP_name))
insert into employee1 values(12554525,'Martin','Guptill','NZ','32551552',25,'M','Adminstrative Support','Receptionist','','','','Louiseville International Airport');
insert into employee1 values(12554789,'Adam','Singh','Goa','24545118',30,'M','Adminstrative Support','Secretary','','','','Goa International Airport');
insert into employee1 values(12554588,'James','Wood','NZ','285525125',37,'M','Engineer','','Radio Engineer','','','Louiseville International Airport');
insert into employee1 values(12554517,'Joe','Root','ENG','254184151',28,'M','Traffic Monitor','','','Day','','San Francisco International Airport');
insert into employee1 values(12554599,'Eoin','Morgan','ENG','254184185',33,'M','Traffic Monitor','','','Night','','Delles/New Fort International Airport');
insert into employee1 values(12554576,'Chris','Woakes','NZ','32551552',25,'M','Traffic Monitor','','Manager','Night','Employee','Chicago International Airport');
insert into employee1 values(12554585,'Adin','Markram','SA','84454848',18,'M','Airport Authority','','Manager','Day','Manager','Louiseville International Airport');
insert into employee1 values(12554535,'Quiton','De kock','SA','145454545',32,'M','Adminstrative Support','Receptionist','','Day','Employee','Chandigarh International Airport');
insert into employee1 values(12554600,'Harry','Knight','AUS','1552552555',38,'F','Adminstrative Support','Data Entry Worker','','Day','','Louiseville International Airport');
insert into employee1 values(12554601,'Prathamesh','Rajapurkar','Nigeria','1552552555',100,'M','Tiolet','Tiolet Cleaner','','Afternoon','','chennai International Airport');
select * from employee1
desc employee1
create table employee(jobtype varchar(100),salary int not null,primary key(jobtype))
insert into employee values('Adminstrative Support',50000)
insert into employee values('Engineer',70000)
insert into employee values('Traffic moniter',80000)
insert into employee values('Airport Authority',90000)
select * from employee
desc employee
create view air_india as select airline_id,airline_name,Three_digit_code from airline where airline_id='AI'
select * from air_india
create table passenger(PID int not null,passportno varchar(10) not null ,primary key (PID,passportno),Fname varchar(20),M varchar(20),address varchar(100),phone Int,Age Int,Sex varchar(1),Flight_code char(10))
insert into Passenger values(1,'A1234501','Anurag','Yadav','Wadala',9967082,19,'M','AI2014') 
insert into Passenger values(2,'B1234500','Kaustubh','Toraskar','Kaustubh',9820812,20,'M','QR2305')
insert into Passenger values(3,'B1234502','Kaustubh','Toraskar','Kalyan',9820812,20,'M','EY1234')
insert into Passenger values(4,'C1234503','Prathamesh','Rajapurkar','Worli',9967082,19,'M','LH9876')
insert into passenger values(5,'D1234504','Aakash','jaiswal','kalyan',585548,19,'M','AF7468')
insert into Passenger values(6,'E1234506','Priya','Chavan','kalyan',3584554,20,'F','DL1235')
insert into Passenger values(7,'A1234508','Radhika','Sharma','Panvel',2154515,20,'F','AF7468')
insert into Passenger values(8,'B1234509','Sneha','Chavan','Pune',564515,16,'F','DL1235')
insert into Passenger values(9,'C12345010','Joe','Root','Yorshire',2158455,29,'M','AC4788')
insert into Passenger values(10,'D12345011','Jason','Roy','London',2854544,28,'M','TK3098')
insert into Passenger values(11,'E12345012','Kane','Williamson','Tauranga',2584111,31,'M','AI2221')
insert into Passenger values(12,'F12345013','Jonny','Bairstow','Birmingtham',25555115,20,'M','AC4788')
insert into Passenger values(13,'W12345013','Shubham','Chavan','Wakola',25555123,21,'M','AC4778')
insert into Passenger values(14,'T12345045','Atharva','Mhaishalkar','Thane',21103017,20,'M','AC889')
insert into Passenger values(15,'B12345045','Farhan','Khan','Bandra',21103022,20,'M','AC789')
delete from passenger  where PID=2
delete from passenger  where PID=13
select * from Passenger
create table ticket(ticket_no int not null,source char(3),destination char(3),Date_of_Booking date,Date_of_travel date,seatno varchar(5),class varchar(15),Date_of_Cancellation Date,PID int,passportno varchar(10),price int,foreign key(PID,passportno) references passenger(PID,passportno))
alter table ticket add constraint ticket_no_length check(length(ticket_no)>6)
set foreign_key_checks=1;
insert into ticket values(5978609,'IAH','DEL','2019-11-05','2020-10-03','1A','Economy','2020-10-03',1,'A1234501',1344)
insert into ticket values(5978610,'VDL','WAK','2021-11-05','2023-10-03','1A','Business',null,13,'W12345013',1300)
insert into ticket values(5978611,'MUM','DEL','2019-11-05','2020-10-03','1A','Economy',null,3,'B1234502',5344)
insert into ticket values(5978612,'TIT','VDL','2023-11-05','2023-10-03','2A','Business',null,4,'C1234503',100)
insert into ticket values(5978613,'TNA','VDL','2023-11-05','2003-06-30','3A','Business',null,14,'T12345045',1344)
insert into ticket values(5978614,'BAN','VDL','2023-11-01','2023-06-03','3A','Business',null,15,'B12345045',1044)
insert into ticket values(5978615,'KYN','JAI','2019-11-05','2020-10-03','1A','Economy',null,5,'D1234504',1364)
insert into ticket values(5978616,'KYN','AKL','2020-11-05','2021-11-13','1A','Economy','2021-11-06',6,'E1234506',1344)
insert into ticket values(5978617,'KYN','PVL','2021-11-11','2021-12-03','1A','Economy','2021-11-16',7,'A1234508',5000)
insert into ticket values(5978618,'MUM','PUN','2022-02-05','2022-10-03','1A','Business',null,8,'B1234509',1000)
insert into ticket values(5978619,'YOR','SYD','2021-01-15','2021-10-13','1A','Economy',null,9,'C12345010',60000)
insert into ticket values(5978620,'LON','DEL','2021-02-05','2021-03-10','1A','Economy','2021-03-06',10,'D12345011',1344)
insert into ticket values(5978621,'TAU','HYB','2021-02-05','2021-03-15','1A','Economy',null,11,'E12345012',1344)
insert into ticket values(5978622,'BIR','MOH','2021-02-06','2021-03-20','1A','Economy',null,12,'F12345013',60000)
select * from ticket
select jobtype from employee1 union select jobtype from employee
select jobtype from employee1 intersect select jobtype from employee
select jobtype from employee1 minus select jobtype from employee
select * from flight where FlightType='connecting'
select * from employee where (salary<90000)
select count(class) from ticket where class='Business'
select max(price) from ticket
select jobtype,astype,etype,shift,position from employee1 group by jobtype
select * from passenger where passportno='A1234501'
select PID,Flight_code from passenger order by PID DESC
select jobtype,salary from employee group by jobtype having salary>80000
select * from flight where arrival between '22:00'and'23:00'
select * from flight where departure in ('03:15','06:35')
select * from ticket where Date_of_Cancellation is null
select * from city where Cname like 'C_%';