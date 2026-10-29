/* Full Question: Create separate MongoDB queries to display students belonging to a particular department, students having marks greater than 75, marks between 50 and 80, and students older than 20. Display the results through Flask. */

# MongoDB / PyMongo filters
students.find({'department':'BCA'})
students.find({'marks':{'$gt':75}})
students.find({'marks':{'$gte':50,'$lte':80}})
students.find({'age':{'$gt':20}})
