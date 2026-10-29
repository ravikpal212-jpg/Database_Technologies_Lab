/* Full Question: Create a search facility where the user can enter a Student ID. Use MongoDB to find the corresponding student document and display the student's details. Handle the situation where the student does not exist. */

from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); students=MongoClient('mongodb://localhost:27017/')['CollegeDB']['students']
@app.get('/search')
def search():
    sid=request.args.get('student_id',type=int); s=students.find_one({'student_id':sid},{'_id':0})
    return s if s else {'message':'Student not found'}, (200 if s else 404)
if __name__=='__main__': app.run(debug=True)
