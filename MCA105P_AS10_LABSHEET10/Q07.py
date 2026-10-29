/* Full Question: Create a search facility that allows the user to search for a medicine using Medicine ID or Medicine Name. Display the matching medicine document and show a suitable message when no medicine is found. */

from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.get('/search')
def search():
 q=request.args.get('q',''); m=medicines.find_one({'$or':[{'name':{'$regex':q,'$options':'i'}},{'medicine_id':int(q) if q.isdigit() else -1}]},{'_id':0}); return m if m else ({'message':'Medicine not found'},404)
if __name__=='__main__': app.run(debug=True)
