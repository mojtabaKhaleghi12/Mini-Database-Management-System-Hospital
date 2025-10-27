--جدول مریض
CREATE TABLE Bimar (
    Bimar_Name VARCHAR(100)  PRIMARY KEY,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL
  
);


--جدول دکتر
CREATE TABLE Doctor (
    Doctor_Name VARCHAR(100) PRIMARY KEY,
    Specialty VARCHAR(100)
);

-- جدول نوبت ملاقات
CREATE TABLE NobatMolaghat (
    Nobat INT PRIMARY KEY,
    Bimar_Name VARCHAR(100),
    Doctor_Name VARCHAR(100),
    nobat_Date DATE NOT NULL,
    Time_nobat TIME NOT NULL,
    FOREIGN KEY (Bimar_Name) REFERENCES Bimar(Bimar_Name),
    FOREIGN KEY (Doctor_Name) REFERENCES Doctor(Doctor_Name)
);

-- جدول پذیرش
CREATE TABLE pazirsh (
    pazirsh_ID INT PRIMARY KEY,
    Date_pazirsh DATE NOT NULL
    
);

-- جدول پرونده پزشکی
CREATE TABLE MedicalRecord (
    Record_ID INT PRIMARY KEY,
    Bimar_Name VARCHAR(100),
    Doctor_Name VARCHAR(100),
    No_Bimari VARCHAR(100),
    Start_Date_bimari DATE,
    End_Date DATE,
    FOREIGN KEY (Bimar_Name) REFERENCES Bimar(Bimar_Name),
    FOREIGN KEY (Doctor_Name) REFERENCES Doctor(Doctor_Name)
);

-- جدول فاکتور
CREATE TABLE Faktor (
    Faktor_ID INT PRIMARY KEY,
    Hospital_Name VARCHAR(100),
    Bimar_Name VARCHAR(100),
    Total_Amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Bimar_Name) REFERENCES Bimar(Bimar_Name),
    FOREIGN KEY (Hospital_Name) REFERENCES Hospital(Hospital_Name)
);

-- جدول پرداخت
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Faktor_ID INT,
    Payment_Method VARCHAR(50) NOT NULL,
    Payment_Date DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Faktor_ID) REFERENCES Faktor(Faktor_ID)
);

-- جدول بیمارستان
CREATE TABLE Hospital (
    Hospital_Name VARCHAR(100) PRIMARY KEY,
    Address_Hospital VARCHAR(255)
);

-- جدول مدیریت داخلی
CREATE TABLE InternalManagement (
    Manager_Name VARCHAR(100) NOT NULL PRIMARY KEY,
    Position VARCHAR(50),
    Hospital_Name VARCHAR(100),
    FOREIGN KEY (Hospital_Name) REFERENCES Hospital(Hospital_Name)
);