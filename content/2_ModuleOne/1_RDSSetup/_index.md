+++
title = "Connecting to your RDS Database"
chapter = true
weight = 20
+++
# Accessing and Managing Your RDS Database  
This guide will walk you through accessing your PostgreSQL database, getting the connection details needed for the Neon setup, and seeding the database with sample data.  
+++
title = "Connecting to your RDS Database"
chapter = true
weight = 20
+++

## 🔄 Seeding the Database  

Once you have confirmed your database connection details, follow these steps to seed the database with sample data:  

1. Decompress and load the dataset into the database:  

```bash
echo "Decompressing dataset..."  
pg_restore -O -U $DB_USERNAME -d $DB_NAME -h $DB_ENDPOINT /tmp/employees.sql.gz  
```

![Screenshot of Dataset Decompression](images/decompress-dataset.png)  

2. Set up schema access for easier database usage:  

```sql
echo "Setting up schema access..."  
psql -h $DB_ENDPOINT -U $DB_USERNAME -d $DB_NAME
```

Set search path for easier access  
```sql
ALTER DATABASE employees SET search_path TO employees, public;  
```

![Screenshot of Schema Setup](images/schema-setup.png)  

3. Enter the following command while connected to the database to set the current session's search path:  

```sql
-- Set current session's search path  
SET search_path TO employees, public;  
```

## 🔍 Exploring the Database  

Once the dataset is loaded, you can explore it using these commands:  

- List all Schemas and tables:  

```bash
\d
```

![Screenshot of List Tables Output](images/list-tables-output.png)
**Note**: You may have to exit (Enter: \q) and reenter the Database if no relations are found initially.

- View detailed table information for the `employee` table:  

```sql
\d+ employee
```

![Screenshot of Table Information](images/table-info.png)  

- Run a sample query:  

```sql
SELECT COUNT(*) FROM department;
```

![Screenshot of Sample Query Output](images/sample-query-output.png)  

Exit the database:

```bash
\q
```

+++
title = "Connecting to your RDS Database"
chapter = true
weight = 20
+++

🎯 **Next Steps**: Once you have your connection details and the database is seeded, proceed to the Neon setup section.
