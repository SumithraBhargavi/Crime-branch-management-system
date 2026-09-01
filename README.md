# Crime Branch Management System

A web-based Crime Branch Management System designed to help manage criminal records, FIRs, missing-person reports, user information, and crime-related data through a centralized web application.

## 📌 Project Overview

The Crime Branch Management System is a Java-based web application developed to provide a centralized platform for managing crime-related information.

The system allows authorized users to maintain and retrieve information such as:

- Criminal records
- FIR (First Information Report) details
- Missing-person reports
- User registration and login
- Crime records
- Criminal information
- Safety-related information
- Database records and queries

The application follows a structured **DAO (Data Access Object) architecture** for interacting with the MySQL database and uses **Java Servlets and JSP** to handle the web application logic and user interface.

---

## 🚀 Features

### 🔐 User Authentication
- User registration
- User login
- User authentication using Java Servlets
- Separate pages for login and signup

### 👤 Criminal Record Management
- Add criminal information
- Store criminal records in the database
- Retrieve and display criminal records
- View detailed information about criminals

### 📄 FIR Management
- Register FIR details
- Store FIR information
- Retrieve FIR records
- View FIR details

### 🔎 Missing Person Management
- Submit missing-person reports
- Store missing-person information
- Retrieve missing records
- View missing-person details

### 📊 Crime Records
- Maintain crime-related records
- Search and retrieve stored records
- Display information through JSP pages

### 🛡️ Safety Information
- Provides safety-related information through dedicated pages

---

## 🛠️ Technologies Used

### Frontend
- HTML
- CSS
- JSP
- JavaScript

### Backend
- Java
- Java Servlets
- JDBC

### Database
- MySQL

### Server
- Apache Tomcat

### Database Connectivity
- MySQL Connector/J

### Development Tools
- Eclipse / Visual Studio Code
- Git
- GitHub

---

## 🏗️ Project Architecture

The project follows a layered structure consisting of:

```text
Crime Branch Management System
│
├── Presentation Layer
│   ├── JSP
│   ├── HTML
│   └── CSS
│
├── Servlet Layer
│   ├── LoginServlet
│   ├── SignupServlet
│   ├── FIR
│   ├── FirData
│   ├── CrimeRecords
│   ├── CrimeRecordForm
│   ├── MissingReportForm
│   └── MissingTable
│
├── DAO Layer
│   ├── CrimeRec
│   ├── FirD
│   ├── missingRec
│   ├── UserDao1
│   └── UserDaoImpl
│
└── Database Layer
    └── MySQL
