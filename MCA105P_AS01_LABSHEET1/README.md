# Database Technologies — Lab Sheet 1

**Course Code:** MCA105P  
**Topic:** Basic DBMS Commands — DDL Commands and their types  
**Questions:** 50 (20 Easy, 20 Medium, 10 Hard)

This folder contains one `.sql` file for each question in the provided Lab Sheet 1 PDF. Every file includes the full question as a comment followed by its SQL answer.

## How to run
1. Open MySQL Workbench or another MySQL-compatible SQL editor.
2. Select your practice database.
3. Open the required question's `.sql` file.
4. Execute the statement.

## Notes
- The answers use MySQL syntax, including `ENUM`, `RENAME TABLE`, `AFTER`, `FIRST`, and `CREATE TABLE ... LIKE`.
- Some commands assume that the relevant table/column already exists. Run prerequisite statements first where needed.
- Some statements permanently drop tables/columns or change primary keys. Use a practice database and back up important data before running destructive commands.
- Q16 assumes `student_courses` already has `student_id` and `course_id` columns.
- Q31 and Q46 may require filling new ID columns with unique, non-NULL values before adding the new primary key if the tables already contain records.
