# Intro to the Relational Database

- **What operations should we expect SQL Server (or any DBMS) to support just on what we know right now?**
  - `create table`
  - `insert into`
  - `select`
  - `delete from`
- **What sorts of inputs do these functions need to have?**
  - **create table:** `table name, schema`
  - **insert into:** `table name, record`
  - **select:** `table name, attributes`
  - **delete from:** `table name, condition`
- **What other behaviour do we expect from these functions?**
  - Much of the behaviour is similar to a dictionary from Data Structures class.

## Common Syntax

    CREATE TABLE [tablename]
        ([att1] [type1]),
         [att2] [type2]...);

    INSERT INTO [tablename] VALUES ([val1], [val2]...);

    SELECT * FROM [tablename]
    SELECT [att1], [att2]... FROM [tablename] WHERE [condition]

    DELETE FROM [tablename] WHERE [condition]

    ALTER TABLE: Adds a new attribute to the table
    ALTER TABLE [tablename] ADD [att_name] [att_type]

    UPDATE: Change the attribute for a particular tuple in the table.
    UPDATE [tablename] SET [att_name]=[value] WHERE [condition]

---

- Tables are **NOT ORDERED**. They are sets or multisets.
- Tables are **FLAT**. No nested attributes.
- Tables DO NOT prescribe how they are implemented / stored on disk. This is called **physical data independence**.

**Physical Data Independence**: The logical definition of the data remains unchanged, even when we make changes to the actual implementation.

## Data Models / Summary

**Schema + Instance + Query Language**

- Relational Model
  - Database - collection of tables
  - Eachb table is flat. _first normal form_
  - Key: may consist of multiple attributes
  - Foreign key: _semantic pointer_
  - Physical data independence
