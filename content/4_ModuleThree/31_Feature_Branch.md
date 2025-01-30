+++
title = "Hands-On: Neon Branching Workflow"
weight = 35
+++

# Hands-On: Neon Branching Workflow 🛠️

In this section, you’ll learn how to create, modify, and verify changes in a **Neon feature database** to experience the benefits of isolated development and testing.

---

## ✅ Step 1: Create a Feature Database

Follow these steps to create a feature database in the Neon Console:

1. Log in to the [Neon Console](https://console.neon.tech).
2. Navigate to your project and open the **Branches** tab.
3. Click **New Branch**.
4. Name your branch (e.g., `feature-test-db`).
5. Select the **main branch** (Main Database) as the parent and click **Create**.

> **Result**: You’ve created a new feature database with a full copy of the main branch’s data.

![Placeholder for screenshot of Neon Console Branches tab showing "New Branch" creation steps.](/staticplaceholder-for-screenshot.png)

---

## ✅ Step 2: Connect to the Feature Database

1. In the **Branches** tab, copy the connection string for your feature database.
2. Go back to the **server** and open the terminal.
3. Export the connection string as an environment variable to simplify future connections:
   ```bash
   export FEATURE_DATABASE_CONN="<your-connection-string>"
   ```

   Replace `<your-connection-string>` with the connection string copied from the Neon Console.

4. Confirm that the environment variable is set:
   ```bash
   echo $FEATURE_DATABASE_CONN
   ```

   You should see your connection string displayed.

5. Use the connection string to connect to the feature database:
   ```bash
   psql $FEATURE_DATABASE_CONN
   ```

6. Verify that the feature database’s data matches the main database:
   ```sql
   SELECT * FROM employees.salary;
   ```

---

## ✅ Step 3: Apply Schema Changes to the Feature Database

Make schema changes in the feature database without affecting the main database.

Example:

```sql
ALTER TABLE employees.salary ADD COLUMN bonus NUMERIC(10, 2) DEFAULT 0;
```

Verify the change:

```sql
SELECT * FROM employees.salary;
```

Confirm the **bonus** column is added.

---

## ✅ Step 4: Verify the Main Database Is Unaffected

The connection string for the **main database** is already saved as an environment variable (`DEV_DATABASE_URL`). Use this variable to connect back to the main database:

1. Connect to the main database using the environment variable:
   ```bash
   psql $DEV_DATABASE_URL
   ```

2. Check the schema:
   ```sql
   SELECT column_name
   FROM information_schema.columns
   WHERE table_name = 'salary';
   ```

> **Result**: The `bonus` column will not appear in the main database.

---

## ✅ Step 5: Clean Up the Feature Database

Once testing is complete, delete the feature database:

1. In the Neon Console, go to the **Branches** tab.
2. Find your feature database (e.g., `feature-test-db`).
3. Click the **ellipsis (⋮)** next to the branch and select **Delete**.

Alternatively, you can delete the feature database programmatically using the Neon API:
   ```bash
   curl -X DELETE https://console.neon.tech/api/v2/projects/<project-id>/branches/<branch-id> \
   -H "Authorization: Bearer <api-key>"
   ```

![Placeholder for screenshot of Neon Console showing branch deletion steps.](/staticplaceholder-for-screenshot.png)

---

## 🎯 Summary

With Neon’s branching feature, you’ve:
- Created a new feature database for isolated testing.
- Exported the connection string as an environment variable for easier access.
- Applied schema changes without impacting the main database.
- Verified database independence through testing.
- Cleaned up the feature database after completing your tests.

👉 Use these steps to streamline your dev/test workflows while maintaining safety and efficiency!
</api-key></branch-id></project-id></your-connection-string></your-connection-string>