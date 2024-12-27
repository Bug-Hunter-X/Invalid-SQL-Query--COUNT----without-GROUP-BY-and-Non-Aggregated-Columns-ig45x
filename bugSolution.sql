To fix this error, you either need to include a `GROUP BY` clause to group rows based on the non-aggregated columns or remove those columns from the `SELECT` list if you only want the total count of rows.

**Option 1: Use GROUP BY**
If you need counts per group of `column1` and `column2`, use a `GROUP BY` clause:
```sql
SELECT COUNT(*), column1, column2
FROM my_table
GROUP BY column1, column2;
```

**Option 2: Remove Non-Aggregated Columns**
If you only need the total count of rows, remove the non-aggregated columns:
```sql
SELECT COUNT(*)
FROM my_table;
```