/* Tommie EZ Park Database Management Final Project */

CREATE TABLE PARKINGLOCATION(

	ParkingName Varchar(50)        NOT NULL,

	Capacity    char(25)              NOT NULL,
   
	Address     VarChar(255)      NOT NULL,
    
	SafetyInfo  VarChar(255)       NULL,
	
	LotStatus    Char(25)       	NOT NULL,
	
	PRIMARY KEY (ParkingName)        

);


INSERT INTO PARKINGLOCATION (ParkingName,Capacity,Address,Safetyinfo,LotStatus)
    
	VALUES('APF','200','Grand Avenue, St Paul, MN 55105','888-222-4522','Not Full');

INSERT INTO PARKINGLOCATION (ParkingName,Capacity,Address,Safetyinfo,LotStatus)
    
	VALUES('Lot A','120','Summit Avenue, Paul, MN 55105','888-222-4522','Full');

INSERT INTO PARKINGLOCATION (ParkingName,Capacity,Address,Safetyinfo,LotStatus)
    
	VALUES('Lot O','105','Summit Avenue, Paul, MN 55105','888-222-4522','Not Full');

CREATE TABLE ADMINISTRACTION (   
	
	UserID 			  int             	NOT NULL,   
 	
	UserAccess		VarChar(255) 		NOT NULL,   
 	
	UserType 		VarChar(255) 		NOT NULL,   
 	
	Login	 		VarChar(255) 	 	NOT NULL,   
 	
	PassWord   		VarChar(25) 		NOT NULL,
 	
	PRIMARY KEY (UserID)
);

INSERT INTO ADMINISTRACTION(UserID,UserAccess,UserType,Login,Password)
        VALUES('5662','Full','Administrator','Dian566','g92eJ@X');
        
INSERT INTO ADMINISTRACTION(UserID,UserAccess,UserType,Login,Password)
        VALUES('1455','Limited','Assistant Admin','Bobn1455','gWjc$LY');
INSERT INTO ADMINISTRACTION(UserID,UserAccess,UserType,Login,Password)
        VALUES('0230',' Limited','Assistant','Sany0230', 'sxG*DxC');
        
INSERT INTO ADMINISTRACTION(UserID,UserAccess,UserType,Login,Password)
        VALUES('2336',' No-access','Maintenance','Fran2336','Bv^RVGC');
        
        
CREATE TABLE  PERMITHOLDER ( 
		
	DL#		        Varchar(30)		        NOT NULL,
		
	FirstName	     VarChar(255)      		NOT NULL,
		
	Lastname	     VarChar(255)      		NOT NULL,
		
	Occupation	     Char(54)    	        NOT NULL,

	Email		     Varchar(54)		NULL,

	Phone#    	     VarChar(15)       	    NOT NULL,
		
	PRIMARY KEY (DL#)

);


INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('S530-313-453-493','Ethan','Wang','Student','wan@ezpark.edu','(909) 540-2432');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('P400-900-123','Sarija','janardhanan','Student','jan@ezpark.edu','(723) 437-7886');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
           
	VALUES('A525-855-548','Issa','Prosper','Professor','pro@ezpark.edu','(924) 298-2774');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
           
	 VALUES('P600-611-906','Kevin','Elliot','Employee','ell@ezpark.edu','(237) 780-7368');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('R260-821-714','Keveny','Rosier','Visitor','ros@ezpark.edu','(533) 682-0618');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('J200-907-991-633','Kely','Rosier','Visitor','kel@ezpark.edu','(533) 652-0618');

INSERT INTO PERMITHOLDER(DL#,FIRSTNAME, LASTNAME,OCCUPATION,Email,PHONE#)
            
	VALUES('R260-821-714-772','Mama','Rov','Student','rov@ezpark.edu','(533) 662-0518');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('A525-855-548-495','Cruma','lily','Student','lil@ezpark.edu','(533) 652-4518');


INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('K530-870-594-515','Barlow','Baly','Professor','bal@ezpark.edu','(533) 690-0618');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('E652-249-234-970','Faraja','serge','Professor','ser@ezpark.edu','(533) 678-0618');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('P605-611-906-415','Luka','Nike','Employee','nik@ezpark.edu','(533) 148-0618');

INSERT INTO PERMITHOLDER(DL#,Firstname,Lastname,Occupation,Email,Phone#)
            
	VALUES('A450-970-705-130','Serge','baba','employee','bab@ezpark.edu','(533) 208-7818');
     

CREATE TABLE PERMIT (	
	PermitID	Int		NOT NULL,
	DateStart	Date ,
	ExpirationDate    Date  ,
	Status    	Char(25)       	NOT NULL,
	Price		Decimal(12,3)   NOT NULL,
	DL#		VarChar (30)    NOT NULL,
        PRIMARY KEY (PermitID),
        FOREIGN KEY  (DL#)  REFERENCES PERMITHOLDER(DL#)
);

INSERT INTO PERMIT(PermitID,DateStart,ExpirationDate,Status,Price,DL#)
            
	VALUES('81643567','20-DEC-2018','27-DEC-2019','Valid','120','S530-313-453-493');

INSERT INTO PERMIT(PermitID,DateStart,ExpirationDate,Status,Price,DL#)
          
	VALUES('12134538','28-NOV-2018','28-NOV-2019','Valid','240','P400-900-123');

INSERT INTO PERMIT(PermitID,DateStart,ExpirationDate,Status,Price,DL#)
          
	VALUES('90876542','16-AUG-2018','16-AUG-2019','Valid','120','A525-855-548');

INSERT INTO PERMIT(PermitID,DateStart,ExpirationDate,Status,Price,DL#)
          
	 VALUES('876543289','19-APR-2019','16-AUG-2020','valid','120','P600-611-906');

INSERT INTO PERMIT(PermitID,DateStart,ExpirationDate,Status,Price,DL#)
          
	VALUES('54214656','27-FEB-2019','27-FEB-2020','Expired','240','R260-821-714');
    
   
CREATE TABLE  CAR ( 		
		
	Vin#		       VarChar(55)	        NOT NULL,
		
	Plate#		       Char(20)      		NOT NULL,
		
	Make	 	       Char(25)      		NOT NULL,
		
	Model	    	       VarChar(54)    	    NULL,
		
	Color    	       Char(55)        	NOT NULL,
		
	OwnerFirstName	        VarChar(255) 		NOT NULL,
		
	OwnerLastName		VarChar(255) 		NOT NULL,
		
	PermitID	    	  int		    NOT NULL,
        
	ParkingName        VarChar(255)         NOT NULL,
  		
	CONSTRAINT 	  PK_CAR  PRIMARY KEY  (Vin#), 
        
       FOREIGN KEY (PermitID) REFERENCES PERMIT (PermitID),
        
       FOREIGN KEY (ParkingName) REFERENCES PARKINGLOCATION (ParkingName)

);
      
        
INSERT INTO CAR(VIN#,PLATE#,MAKE,MODEL,COLOR,OWNERFIRSTNAME,OWNERLASTNAME,PERMITID,PARKINGNAME)
            
	VALUES('JTDBL40E8990','47579PC','Toyota','Camry','Black','ETHAN','Wang','81643567','APF');

INSERT INTO CAR(VIN#,PLATE#,MAKE,MODEL,COLOR,OWNERFIRSTNAME,OWNERLASTNAME,PERMITID,PARKINGNAME)            
            
	VALUES('1G1AL18F2774','47579PC','Nissan','Sentra','White','John','Maurice','12134538','Lot A');

INSERT INTO CAR(VIN#,PLATE#,MAKE,MODEL,COLOR,OWNERFIRSTNAME,OWNERLASTNAME,PERMITID,PARKINGNAME)            
            
	VALUES('SAJWA82B39S','GYP9814','Toyota','Rav4','Green',' Sarija','Janardhanan','90876542','Lot O');

INSERT INTO CAR(VIN#,PLATE#,MAKE,MODEL,COLOR,OWNERFIRSTNAME,OWNERLASTNAME,PERMITID,PARKINGNAME)            
           
 	VALUES('1FTEF17WXVL','GWE6743','Audi','A4','Gray','Keveny','Rosie','876543289','Lot O');

INSERT INTO CAR(VIN#,PLATE#,MAKE,MODEL,COLOR,OWNERFIRSTNAME,OWNERLASTNAME,PERMITID,PARKINGNAME)            
            
	VALUES('3D3KA286X3G7','GRS4332','Ford','F150','White','Issa','Prosper','54214656','APF');
    
  
CREATE TABLE  TICKETINGOFFICER ( 		
	OfficerID		Int	        	    NOT NULL,
	FirstName		VarChar(255)      	NOT NULL,
	LastName	 	VarChar(255)      	NOT NULL,
	PRIMARY KEY  (OfficerID)

);

INSERT INTO TICKETINGOFFICER(OFFICERID,FIRSTNAME, LASTNAME)
    VALUES('8772','Garyl','Marc');
INSERT INTO TICKETINGOFFICER(OFFICERID,FIRSTNAME, LASTNAME)
    VALUES('9785','Akio','Wringt');
INSERT INTO TICKETINGOFFICER(OFFICERID,FIRSTNAME, LASTNAME)
    VALUES('8965','Francisco','Pablo');
INSERT INTO TICKETINGOFFICER(OFFICERID,FIRSTNAME, LASTNAME)
    VALUES('5258','Ayaki','Fancy');  
    
CREATE TABLE  NOTIFICATION ( 		
	NotificationID	   Int		NOT NULL,
	Receipient	   Char(255)            NOT NULL,
	Types	 	   Char(50)      	NOT NULL,
	NotificationMode  VarChar(25)          NOT NULL,
	DateTimesent        Timestamp       	        ,
	NotificationCount   int		       NOT NULL,
	NotificationStatus  VarChar(25)        NOT NULL,
	DL#		            VarChar(254) 	       NOT NULL,
	PRIMARY KEY  (NotificationID),
	FOREIGN KEY   (DL#) REFERENCES PERMITHOLDER
);

INSERT INTO NOTIFICATION( NOTIFICATIONID, RECEIPIENT, TYPES,NotificationMode,DateTimesent,NotificationCOUNT,notificationstatus,DL#)
          
	VALUES('987654','Student','Warming','email',TIMESTAMP '2019-01-15 14:00:00.000000','2','active','S530-313-453-493');

INSERT INTO NOTIFICATION(NOTIFICATIONID, RECEIPIENT, TYPES,NotificationMode,DateTimesent,NotificationCOUNT,notificationstatus,DL#)
     
	VALUES('345267','student','Ticket','email',TIMESTAMP '2018-03-15 09:00:00.000000','1','Inactive','P400-900-123');

INSERT INTO NOTIFICATION(NOTIFICATIONID, RECEIPIENT, TYPES,NotificationMode,DateTimesent,NotificationCOUNT,notificationstatus,DL#)
         
	 VALUES('087678','Employee','Ticket','Textmessage',TIMESTAMP '2019-04-15 19:00:00.000000','3','active','A525-855-548');

INSERT INTO NOTIFICATION(NOTIFICATIONID, RECEIPIENT, TYPES,NotificationMode,DateTimesent,NotificationCOUNT,notificationstatus,DL#)
        
	  VALUES('765429','Visitor','Ticket','email',TIMESTAMP '2018-06-15 15:00:00.000000','2','inactive','P600-611-906');

INSERT INTO NOTIFICATION( NOTIFICATIONID, RECEIPIENT, TYPES,NotificationMode,DateTimesent,NotificationCOUNT,notificationstatus,DL#)
          
	VALUES('918723','Employee','Ticket','email',TIMESTAMP '2019-07-10 16:00:00.000000','3','active','R260-821-714');


CREATE TABLE  TICKET  ( 
		Citation#	    VarChar(255)	NOT NULL,
		Plate#		    VarChar(20)      	NOT NULL,
		TicketIssue	Timestamp                   ,
        	Description	    varChar(255)    	NULL,
		AMOUNT_PAID	Decimal(12,2)		,
		ParkingName    	VarChar(50)       	NOT NULL,
		PermitID 	    int 		NOT NULL,
		Vin#		    VarChar(55) 	NOT NULL,
		PRIMARY KEY  (Citation#),
		FOREIGN KEY (ParkingName)  REFERENCES PARKINGLOCATION, 
		FOREIGN KEY   (Vin#) REFERENCES CAR, 
		FOREIGN KEY (PermitID) REFERENCES PERMIT
);


INSERT INTO TICKET ( Citation#,Plate#,TicketIssue,AMOUNT_PAID, Description,ParkingName,PermitID,VIN#)
       
	 VALUES('91Z-V75','7579PC',TIMESTAMP '2019-02-15 08:00:00.000000', '150.00','Prohibited','APF','81643567','JTDBL40E8990');  

INSERT INTO TICKET ( Citation#,Plate#,TicketIssue,AMOUNT_PAID, Description,ParkingName,PermitID,VIN#)
       
	 VALUES('JRT-3IJ','7579PC',TIMESTAMP '2019-01-04 14:00:00.000000','150.00','Prohibited area','Lot A','12134538','1G1AL18F2774');

INSERT INTO TICKET ( Citation#,Plate#,TicketIssue, AMOUNT_PAID,Description,ParkingName,PermitID,VIN#)
        
	VALUES('5BB-AEU','XAUG22',TIMESTAMP '2019-01-15 14:00:00.000000','150.00','prohibited area','Lot O','90876542','SAJWA82B39S');  

INSERT INTO TICKET (Citation#,Plate#,TicketIssue,AMOUNT_PAID,Description,ParkingName,PermitID,VIN#)
        
	VALUES('52U-92V','6CT364',TIMESTAMP '2019-01-15 14:00:00.000000','150.00','Tires on yellow line','Lot O','876543289','1FTEF17WXVL');    

INSERT INTO TICKET (Citation#,Plate#,TicketIssue,AMOUNT_PAID,Description,ParkingName,PermitID,VIN#)
       
	 VALUES('BJV-5KB','HEE136',TIMESTAMP '2019-01-15 14:00:00.000000','150.00','Tires on yellow line','APF','54214656','3D3KA286X3G7');       
        
        

CREATE TABLE  VIOLATION  ( 		
		Violation#		    VarChar(255)		NOT NULL,
		FineAmount	       	Decimal(12,2)           NOT NULL,
		ViolationType		 Char(255)      	NOT NULL,
		ViolationWarning 	VarChar(255)    	NULL,
		Citation#    	    	VarChar(255)       	NOT NULL,
		PRIMARY KEY (Violation#),
		FOREIGN KEY   (Citation#) REFERENCES TICKET (Citation#)
);

INSERT INTO VIOLATION (Violation#,FineAmount,ViolationType,ViolationWarning,Citation#)
     
 	VALUES('TLZTMW3R','0.00','Sidewalk','Yes','52U-92V');   

INSERT INTO VIOLATION (Violation#,FineAmount,ViolationType,ViolationWarning,Citation#)
     
 	VALUES('I9S7GQD0','240.00','Safety zone','No','JRT-3IJ');

INSERT INTO VIOLATION (Violation#,FineAmount,ViolationType,ViolationWarning,Citation#)
      
	VALUES('3SOTENM','155.00','Fire hydrant','No','5BB-AEU');

INSERT INTO VIOLATION (Violation#,FineAmount,ViolationType,ViolationWarning,Citation#)
     
	VALUES('RYCMD3M','240.00','Safety zone','No','91Z-V75');

INSERT INTO VIOLATION (Violation#,FineAmount,ViolationType,ViolationWarning,Citation#)
      
	VALUES('7M3XU3E','200.00','sidewalk','No','BJV-5KB');

CREATE TABLE  TICKETTICKETINGOFFICER ( 	
	OfficerID		INT	NOT NULL,
	Citation#		VarChar(255)    NOT NULL,
        FOREIGN KEY (Citation#) REFERENCES TICKET,
	FOREIGN KEY (OfficerID) REFERENCES TICKETINGOFFICER
);


INSERT INTO TICKETTICKETINGOFFICER(OFFICERID, Citation#)
           
 	VALUES('8772','91Z-V75');

INSERT INTO TICKETTICKETINGOFFICER(OFFICERID,Citation#)
          
 	 VALUES('9785','JRT-3IJ');

INSERT INTO TICKETTICKETINGOFFICER(OFFICERID, Citation#)
            
	VALUES('8965','5BB-AEU');

INSERT INTO TICKETTICKETINGOFFICER(OFFICERID, Citation#)
            
	VALUES('5258','52U-92V');
    

CREATE TABLE  EMPLOYEE ( 		
	DL#		varchar(30)		NOT NULL,
	EmployeeID	INT                NOT NULL,
	EmployeeType	Char(25)      		NOT NULL,
    EmployeeLevel	Char(255)      		NOT NULL,
	FOREIGN KEY (DL#) REFERENCES PERMITHOLDER 
);

INSERT INTO EMPLOYEE(DL#,EMPLOYEEID,employeetype,employeelevel)
    
	VALUES('P600-611-906','98753','Full time','Assistant Adm');

INSERT INTO EMPLOYEE(DL#,EMPLOYEEID,employeetype,employeelevel)
    
	VALUES('A450-970-705-130','56986','Fulltime','Administrator');
 

CREATE TABLE  PROFESSOR ( 		
	DL#		Varchar(30)		NOT NULL,
	Status	        Char(259)      		NOT NULL,
	DepName		Char(255)      		NOT NULL,
        Office#		Char(25)      		NOT NULL,
        Address		VarChar(255)      	NOT NULL,
        FOREIGN KEY (DL#) REFERENCES PERMITHOLDER 
);

INSERT INTO PROFESSOR(DL#,STATUS,Depname,OFFICE#,ADDRESS)
  
	VALUES('A525-855-548','Professor','Engineering','E-356','325 Carr Ave');

INSERT INTO PROFESSOR(DL#,STATUS,Depname,OFFICE#,ADDRESS)
  
	VALUES('K530-870-594-515','Head-Department','Business','B-366','124 Drew street');

INSERT INTO PROFESSOR(DL#,STATUS,Depname,OFFICE#,ADDRESS)
  
	VALUES('E652-249-234-970','Professor-Advisor','Soft-Engineering','S-142','458 Paul Ave');
 
     

CREATE TABLE  STUDENT ( 		
	DL#		 VarChar(30)		NOT NULL,
	StudentID	int     		NOT NULL,
    Address		 VarChar(255)      	NOT NULL,
    Course		 VarChar(255)      	NULL,
	Major		 Char(255)      	NOT NULL,
    LivingStatus     Char(25)      		NOT NULL,
	FOREIGN KEY (DL#) REFERENCES PERMITHOLDER
);

INSERT INTO STUDENT(DL#,STUDENTID,ADDRESS,COURSE, MAJOR,LIVINGSTATUS)
     
	VALUES('S530-313-453-493','98973','114 St Louis St','DBMS','DataSC','On campus');

INSERT INTO STUDENT(DL#,STUDENTID,ADDRESS,COURSE, MAJOR,LIVINGSTATUS)
      
	VALUES('A525-855-548-495','75884','533 Vandal Ave','Soft.Engineering','Engineer','On Campus');


CREATE TABLE  VISITOR ( 		
	DL#		Varchar(30)		NOT NULL,
	Voucher		Char(255)      		NOT NULL,
	FOREIGN KEY (DL#) REFERENCES PERMITHOLDER
);

INSERT INTO VISITOR(DL#,VOUCHER)
     
	VALUES('J200-907-991-633','GF98756332-6Y');

INSERT INTO VISITOR(DL#,VOUCHER)
    
	 VALUES('R260-821-714','S5614766K-45');  



CREATE TABLE  ADMINISTRACTIONVIOLATION ( 		
	UserID		Int		     NOT NULL,
	Violation#	VarChar(255)      	NOT NULL,
	FOREIGN KEY (Violation#) REFERENCES VIOLATION,
	FOREIGN KEY (UserID) REFERENCES ADMINISTRACTION
);


INSERT INTO ADMINISTRACTIONVIOLATION(USERID,VIOLATION#)
           
	 VALUES('5662','TLZTMW3R');

INSERT INTO ADMINISTRACTIONVIOLATION(USERID,VIOLATION#)
            
	VALUES  ('0230','7M3XU3E');



CREATE TABLE  PARKINGLOCATIONADMINISTRACTION( 		
	UserID			Int			NOT NULL,
	ParkingName		varchar(255)		NOT NULL,
        FOREIGN KEY  (ParkingName) REFERENCES PARKINGLOCATION,
        FOREIGN KEY (UserID) REFERENCES ADMINISTRACTION
);

INSERT INTO PARKINGLOCATIONADMINISTRACTION(USERID,PARKINGNAME)
           
 	VALUES('5662','APF');

INSERT INTO PARKINGLOCATIONADMINISTRACTION(USERID,PARKINGNAME)
           
	 VALUES ('1455','Lot A');

INSERT INTO PARKINGLOCATIONADMINISTRACTION(USERID,PARKINGNAME)
           
 	VALUES  ('0230','Lot O');

INSERT INTO PARKINGLOCATIONADMINISTRACTION(USERID,PARKINGNAME)
           
	 VALUES ('2336','APF');           

INSERT INTO PARKINGLOCATIONADMINISTRACTION(USERID,PARKINGNAME)
            
	VALUES('5662','Lot A');



CREATE TABLE  ADMINISTRACTIONTICKET ( 		
	Citation#	Varchar(255)		NOT NULL,
	UserID	       	Int      		NOT NULL,
	FOREIGN KEY (Citation#) REFERENCES TICKET,
	FOREIGN KEY (UserID) REFERENCES ADMINISTRACTION
);

INSERT INTO ADMINISTRACTIONTICKET(CITATION#,USERID)
            
	VALUES('91Z-V75','5662');

INSERT INTO ADMINISTRACTIONTICKET(CITATION#,USERID)
            
	VALUES('JRT-3IJ', '1455');

INSERT INTO ADMINISTRACTIONTICKET(CITATION#,USERID)
            
	VALUES('5BB-AEU','0230');

INSERT INTO ADMINISTRACTIONTICKET(CITATION#,USERID)
            
	VALUES('52U-92V','2336');



CREATE TABLE  CARPERMITHOLDER( 		
	Vin#		VarChar(55)		NOT NULL,
	DL#		VarChar(30)      	NOT NULL,
	FOREIGN KEY (DL#) REFERENCES PERMITHOLDER,
	FOREIGN KEY  (Vin#) REFERENCES CAR
);

INSERT INTO CARPERMITHOLDER(VIN#,DL#)
             
	VALUES('JTDBL40E8990','S530-313-453-493');

INSERT INTO CARPERMITHOLDER(VIN#,DL#)
            
	 VALUES('1G1AL18F2774','P400-900-123');

INSERT INTO CARPERMITHOLDER(VIN#,DL#)
             
	VALUES('SAJWA82B39S','A525-855-548');

INSERT INTO CARPERMITHOLDER(VIN#,DL#)
             
	VALUES ('1FTEF17WXVL','P600-611-906');

INSERT INTO CARPERMITHOLDER(VIN#,DL#)
             
	VALUES('3D3KA286X3G7','R260-821-714');




