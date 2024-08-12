# Introduction to FireDAC: Fundamentals of Data Access

# Jim McKeeth, GDK Software

# jim@gdksoftware.com \|

# August 12, 1:00 PM (CST)

# Do you want to access data in your application? FireDAC is the answer. This session provides a comprehensive introduction to the essentials of using FireDAC for accessing various types of data and databases across multiple platforms. Whether you\'re working with local databases or remote servers, you\'ll learn the foundational techniques to efficiently manage data in your Delphi applications. A basic understanding of SQL is recommended to make the most of this session. Be sure to catch the FireDAC: Your Secret Dataset Weapon session tomorrow!

# `IMPLEMENTATION`

# FireDAC Database Access

# ● Universal data access components

## ○ Same components for all DBs

# ● Platform independent

# ● TDataset descendent

# ● Data Aware, Live Binding, or GUI* free*

# ● Database specific features

# Top Databases

## ● Top 30 DBMS ranked by [db-engines.com]{.underline}

## ● Remove \"non-relational\"

## ● Leave MongoDB (most popular non-relational DB)

## ● Highlight native supported

## ● Full list: [docwiki/RADStudio/en/Databases\_(FireDAC)]{.underline}

# `BEGIN`

# FireDAC Components \[Basics\]

# Database

# Base

# Management

# System

# Working with DBMS

# Structured

# Query

# Language

# Commonly used with DBMS

# Universal with specific dialects

# Working with SQL

## • Each record has an ID unique in that table

## • Employees have 1 *job*, 1 *department, *and 0 to many *dependents*, stored in separate tables

## • They also have 1 *manager*, which is stored in the employee table

## • Departments have 1 *location*

## • Locations have 1 *country*

## • Countries have 1 *region*

# SQLite

## ● A very simple DBMS that exists as a library functioning as an embedded DBMS. Works across most all platforms.

## ● Lacks some features common to other DBMS.

## ● Often enough for simple use cases.

### ○ [docwiki/RADStudio/en/Using_SQLite_with_FireDAC]{.underline} ←

### ○ [docwiki/RADStudio/en/Connect_to_SQLite_database\_(FireDAC)]{.underline}

### ○ [docwiki/RADStudio/en/Tutorial:\_Connecting_to_a_SQLite_Database_Using_FireDAC]{.underline}

### ○ [docwiki/RADStudio/en/Mobile_Tutorial:\_Using_FireDAC_and_SQLite\_(iOS_and_Android)]{.underline}

### ○ [docwiki/RADStudio/en/SQLite_Database_Questions\_(FireDAC)]{.underline}

# SQLite with FireDAC

## • DriverID: `SQLite`

## • Database: `path to db file ` (defaults to creating if doesn\'t exist)

## • For shared access

### • JournalMode: `WAL`

### • LockingMode: `Normal`

# SQLite with FireDAC

## • LoginPrompt: False

### • Not *usually *needed

## • *Notes*:

### • SQLite doesn\'t store field sizes

### • *TEXT *= dt*WideMemo*

### • MEMO = dtMemo

### • *NVARCHAR *= dt*WideString*

### • VARCHAR = dtAnsiString

# DBGrid Lookup

## • Add a new field to the TFDQuery

## • Give it a name and type

## • Set Field Type as lookup

## • Connect the local key field to the key field of the other dataset

## • Result field is displayed

# Demonstration

# Note on Containers

## • Docker is the *kleenex *of container platforms

## • Recently introduced new license restrictions

## • Podman is a new alternative from RedHat

### • Full compatibility and possibly more secure

### • Open Container Initiative (OCI) compliant

## • Full containers ecosystem

### • Use with [hub.docker.com]{.underline}, [quay.io]{.underline}, or other registries

## • Worth consideration!

# MySQL

## • Midrange RDBMS

### • local, embedded or remote

## • Now owned by Oracle with 4 editions

### • 1 free, and the other 3 paid

## • Very difficult to get client libraries

### • Current client only 64-bit

## • Links: [hub.docker.com/\_/mysql]{.underline} Supply: MYSQL_ROOT_PASSWORD

### • docwiki/RADStudio/

#### • [Connect_to_MySQL_Server\_(FireDAC)]{.underline}

#### • [MySQL_Server_Questions\_(FireDAC)]{.underline}

# MariaDB

## • New open source (GPLv2) fork of MySQL

### • Intended to maintain high compatibility

## • Easy to get 32 or 64-bit client libraries

### • Which are compatible with MySQL

### • [mariadb.com/kb/en/mariadb-connector-c/]{.underline}

## • Refer to MySQL in DocWiki and FireDAC

### • The FireDAC MySQL native driver supports:

#### • MySQL Server Community, Enterprise, and Embedded editions, from version 3.21 up to version 8.0.23.

#### • MariaDB, from version 5.5 up to version 10.6.

## • Recommend using MariaDB over MySQL

# MySQL & MariaDB

## • Download and install drivers

### • [mariadb.com/kb/en/mariadb-connector-c/]{.underline}

## • DriverID: MySQL

## • Server: name or IP

## • Port: 3306 (default)

## • Database: mysql (default-case sensitive)

### • *Instance name within server*

## • [DocWiki/Connect_to_MySQL_Server\_(FireDAC)]{.underline}

# Demonstrations

# `FINALIZATION`

# FireDAC in Depth

## • The definitive book about FireDAC

## • by Spirit of Delphi winner Dr. Cary Jensen

## • [jensendatasystems.com/firedacbook]{.underline}

### • Learn how to connect to a wide variety of databases

### • Optimize your connection configurations

### • Explore the world of indexes, searches, and filters

### • Discover the power of persisted datasets

### • Create flexible queries using macros and FireDAC scalar functions

### • Achieve blazing performance with Array DML

### • Master the art of cached updates

### • Add sophisticated features using Local SQL

# Resources

## • FireDAC DocWiki:

### • [docwiki/RADStudio/en/Firedac]{.underline}

### • [docwiki/RADStudio/en/Overview\_(FireDAC)]{.underline}

### • [docwiki/RADStudio/en/Getting_Started\_(FireDAC)]{.underline}

### • [docwiki/RADStudio/en/FAQ\_(FireDAC)]{.underline}

## • SQL Reference

### • [SQLTutorial.org]{.underline}

### • [en.wikibooks.org/wiki/Structured_Query_Language]{.underline}

### • [w3schools.com/sql]{.underline}

### • [khanacademy.org/computing/computer-programming/sql ]{.underline}

### • [codecademy.com/learn/learn-sql]{.underline}
