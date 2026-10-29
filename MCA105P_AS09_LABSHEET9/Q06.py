/* Full Question: Connect the HTML student form with the Flask backend. When the user submits the form, insert the student information into MongoDB. Verify that the newly added student appears in the students collection. */

from flask import Flask,request,redirect
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.post('/add')
def add():
    d=request.form.to_dict(); d['student_id']=int(d['student_id']); d['age']=int(d['age']); d['marks']=float(d['marks'])
    students.insert_one(d); return 'Student added successfully'
@app.get('/')
def home(): return 'Use the registration form to POST to /add'
if __name__=='__main__': app.run(debug=True)
