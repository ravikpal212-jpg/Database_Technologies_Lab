/* Full Question: Create a Flask page that displays the total number of medicines, total stock, medicines with low stock, the most expensive medicine, and the cheapest medicine. */

from flask import Flask,render_template_string
from pymongo import MongoClient
app=Flask(__name__); medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
@app.get('/report')
def report():
 total=medicines.count_documents({}); stock=sum(m.get('stock',0) for m in medicines.find({}, {'stock':1})); low=list(medicines.find({'stock':{'$lt':30}},{'_id':0})); high=medicines.find_one(sort=[('price',-1)]); lowprice=medicines.find_one(sort=[('price',1)])
 return render_template_string('<h1>Inventory Report</h1><p>Total medicines: {{total}}</p><p>Total stock: {{stock}}</p><h2>Low stock</h2><pre>{{low}}</pre><p>Most expensive: {{high}}</p><p>Cheapest: {{lowprice}}</p>',total=total,stock=stock,low=low,high=high,lowprice=lowprice)
