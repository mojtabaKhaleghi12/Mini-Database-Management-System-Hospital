# Mini-Database-Management-System-Hospital

This project represents the **database design** for a Hospital Management System.  
It defines the relationships between patients, doctors, appointments, admissions, and billing using SQL tables.

---

## 📋 Project Overview

The purpose of this project is to create a **relational database** that can efficiently manage hospital operations such as:
- Patient registration and tracking  
- Doctor information and specialties  
- Appointment scheduling  
- Admission and discharge management  
- Medical records tracking  
- Billing and payments  
- Hospital administration and management  

---

## 🗂️ Database Structure

Below are the main entities (tables) in the system:

| Table Name | Description |
|-------------|-------------|
| **Bimar** | Stores patient details such as name, age, and gender. |
| **Doctor** | Contains information about doctors and their specialties. |
| **NobatMolaghat** | Manages patient appointment schedules with doctors. |
| **pazirsh** | Tracks patient admissions (check-ins). |
| **MedicalRecord** | Stores details about each patient’s medical history. |
| **Faktor** | Holds billing and invoice information for patients. |
| **Payment** | Records payments related to issued invoices. |
| **Hospital** | Contains basic hospital information (name and address). |
| **InternalManagement** | Manages hospital staff such as administrators and managers. |

---

## 🧩 SQL Table Relationships

- **One-to-Many:**  
  - `Hospital → Doctor`  
  - `Doctor → MedicalRecord`  
  - `Bimar → MedicalRecord`, `Bimar → Faktor`, `Bimar → NobatMolaghat`

- **Many-to-One:**  
  - `NobatMolaghat` connects both `Bimar` and `Doctor`
  - `Payment` connects to `Faktor`

---

## Team members:
https://github.com/mojtabaKhaleghi12

https://github.com/sarahroknidoost
