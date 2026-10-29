/* Full Question: Create a facility to delete a medicine using its Medicine ID. After deletion, verify that the document no longer exists in MongoDB. */

from flask import Flask
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.delete('/medicines/<int:mid>')
def delete(mid):
 r=medicines.delete_one({'medicine_id':mid}); return {'message':'Deleted' if r.deleted_count else 'Not found'}
