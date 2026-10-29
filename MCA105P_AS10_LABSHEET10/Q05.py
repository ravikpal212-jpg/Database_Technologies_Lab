/* Full Question: Connect the HTML medicine form with Flask. When the user submits the medicine form, store the medicine as a MongoDB document. Verify the inserted document in MongoDB. */

from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.post('/add')
def add():
 d=request.form.to_dict(); d['medicine_id']=int(d['medicine_id']); d['price']=float(d['price']); d['stock']=int(d['stock']); medicines.insert_one(d); return 'Medicine added'
if __name__=='__main__': app.run(debug=True)
