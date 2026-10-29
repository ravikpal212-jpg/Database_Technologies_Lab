/* Full Question: Create a MongoDB database named CollegeDB and a collection named students. Insert at least 5 student documents containing student_id, name, age, gender, department, and marks. Verify the documents using MongoDB. */

from pymongo import MongoClient
client=MongoClient('mongodb://localhost:27017/')
db=client['CollegeDB']; students=db['students']
students.insert_many([{'student_id':1,'name':'Amit','age':20,'gender':'Male','department':'BCA','marks':85},{'student_id':2,'name':'Priya','age':21,'gender':'Female','department':'BCA','marks':92},{'student_id':3,'name':'Rahul','age':22,'gender':'Male','department':'MCA','marks':76},{'student_id':4,'name':'Neha','age':20,'gender':'Female','department':'BCA','marks':88},{'student_id':5,'name':'Arjun','age':23,'gender':'Male','department':'MCA','marks':69}])
print(list(students.find({}, {'_id':0})))
