# DATABASE MANAGEMENT

Intelligent design and organization of data allows important work and research to occur efficiently and correctly.

- Organizations need a diverse set of skills, you may not evet need to manage a DB, but you will certainly be interfacing with one.
- Decisions made in setting up a DB (or even a query) can affect performance going forward.
- Disk and magnetic tape are linear storage.
  - We can access elements throughout them, but there is a continuous serialization of this data.
  - Data itself is rarely one dimensional.
  - Imagine storing all data about all students on disk.

## What is Database?

A collection of file storing _related_ data.

- Accounts database
- Payroll database
- Students database
- Amazon's products database
- Airline reservation database

## What is Database Management System?

A big program written by someone else that allows us to manage _efficiently_ a large database and _allows_ it to _persist over long periods of time_.

- Oracle, IBM DB2, Microsoft SQL Server, Vertica, Teradata
- **Open source:** MySQL, PostgreSQL, CouchDB
- **Open source library:** SQLite

We will focus on **relational** DBMSs most quarter.

### AN EXAMPLE: Online Bookseller

- What data do we need?
  - Data about books, customers, pending orders, order histories, trends, preferences, etc.
  - Data about sessions (click, pages, searches)
  - Note: data must be persistent! Outlive application
  - Also note that data is large... won't fit all in memory
- What capabilities on the data do we need?
  - Insert/remove books, find books by author/title/etc.., analyze past order history, recommend books, ...
  - Data must be accessed efficiently, by many users
  - Data must be safe from failures and malicious users

## What a DBMS Does?

- Describe real-world entities in terms of stored data.
- Persistently store large datasets.
- Efficiently query & update
  - Must handle complex questions about data
  - Must handle sophisticated updates
  - Performance matters
- Change structure (e.g. add attributes)
- Concurrentcy control: enable simultaneous updates
- Crash recovery
- Security and integrity
