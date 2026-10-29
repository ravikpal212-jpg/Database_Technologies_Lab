/* Full Question: Create a Flask route that retrieves all student documents from MongoDB and displays them on an HTML page in a table containing Student ID, Name, Age, Gender, Department, and Marks. */

from flask import Flask,render_template_string
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.get('/students')
def view():
    rows=list(students.find({}, {'_id':0}))
    return render_template_string('<h1>Students</h1><table border=1><tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Department</th><th>Marks</th></tr>{% for s in rows %}<tr><td>{{s.student_id}}</td><td>{{s.name}}</td><td>{{s.age}}</td><td>{{s.gender}}</td><td>{{s.department}}</td><td>{{s.marks}}</td></tr>{% endfor %}</table>',rows=rows)
