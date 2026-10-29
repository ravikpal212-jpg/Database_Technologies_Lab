/* Full Question: Create a facility to update the stock of a medicine. The user should provide Medicine ID and New Stock. Update the corresponding MongoDB document and display the updated information. */

from flask import Flask,request
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.post('/stock/<int:mid>')
def update_stock(mid):
 stock=int(request.form.get('stock',request.json.get('stock') if request.is_json else 0)); r=medicines.update_one({'medicine_id':mid},{'$set':{'stock':stock}}); return medicines.find_one({'medicine_id':mid},{'_id':0}) if r.matched_count else ({'message':'Not found'},404)
