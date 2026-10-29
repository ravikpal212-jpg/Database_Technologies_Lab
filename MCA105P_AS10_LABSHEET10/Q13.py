/* Full Question: Combine the previous tasks into one working Hospital Medicine Management System containing Home, Add Medicine, View Medicines, Search Medicine, Update Stock, Delete Medicine, Low Stock, and Inventory Report features. */

# Combined Flask API foundation; add HTML templates for navigation/forms as needed.
from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.get('/')
def home(): return '<h1>Hospital Medicine Management</h1><a href=/medicines>View Medicines</a> | <a href=/report>Inventory Report</a>'
@app.post('/medicines')
def add():
 d=request.get_json(); medicines.insert_one(d); return {'message':'added'},201
@app.get('/medicines')
def view(): return list(medicines.find({}, {'_id':0}))
@app.get('/search')
def search():
 q=request.args.get('q',''); return list(medicines.find({'$or':[{'name':{'$regex':q,'$options':'i'}},{'medicine_id':int(q) if q.isdigit() else -1}]},{'_id':0}))
@app.put('/stock/<int:mid>')
def stock(mid): return {'modified':medicines.update_one({'medicine_id':mid},{'$set':{'stock':request.get_json()['stock']}}).modified_count}
@app.delete('/medicines/<int:mid>')
def delete(mid): return {'deleted':medicines.delete_one({'medicine_id':mid}).deleted_count}
@app.get('/low-stock')
def low(): return list(medicines.find({'stock':{'$lt':30}},{'_id':0}))
if __name__=='__main__': app.run(debug=True)
