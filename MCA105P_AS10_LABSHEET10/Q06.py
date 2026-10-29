/* Full Question: Retrieve all medicine documents from MongoDB and display them on an HTML page. The table should display Medicine ID, Medicine Name, Category, Price, Stock, and Manufacturer. */

from flask import Flask,render_template_string
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.get('/medicines')
def view():
 rows=list(medicines.find({}, {'_id':0})); return render_template_string('<h1>Medicines</h1><table border=1><tr><th>ID</th><th>Name</th><th>Category</th><th>Price</th><th>Stock</th><th>Manufacturer</th></tr>{% for m in rows %}<tr><td>{{m.medicine_id}}</td><td>{{m.name}}</td><td>{{m.category}}</td><td>{{m.price}}</td><td>{{m.stock}}</td><td>{{m.manufacturer}}</td></tr>{% endfor %}</table>',rows=rows)
