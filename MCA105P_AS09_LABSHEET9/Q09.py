/* Full Question: Create an update facility that allows the user to modify a student's Name, Age, Department, and Marks. Use MongoDB's update operation and verify the updated document. */

from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.post('/update/<int:sid>')
def update(sid):
    d=request.get_json() or request.form.to_dict()
    if 'age' in d: d['age']=int(d['age'])
    if 'marks' in d: d['marks']=float(d['marks'])
    r=students.update_one({'student_id':sid},{'$set':{k:d[k] for k in ['name','age','department','marks'] if k in d}})
    return {'updated':r.modified_count}
