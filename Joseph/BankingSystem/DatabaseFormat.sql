CREATE TABLE BankAccount (
  Id NUMBER,
  CONSTRAINT Id_pk PRIMARY KEY(Id) 
);

CREATE TABLE PersonalInfo (
  Account_Id NUMBER,
  Name VARCHAR2(50),
  Age NUMBER,
  Address VARCHAR2(100),
  Contact VARCHAR2(50),
  FOREIGN KEY(Account_Id) REFERENCES BankAccount(Id)
);

CREATE TABLE ProfessionalInfo (
  Account_Id NUMBER,
  Profession VARCHAR2(50),
  Income NUMBER,
  FOREIGN KEY(Account_Id) REFERENCES BankAccount(Id)
);

CREATE TABLE Account (
  Account_Id NUMBER,
  Balance NUMBER,
  MinimumBalance NUMBER,
  FOREIGN KEY(Account_Id) REFERENCES BankAccount(Id)
);