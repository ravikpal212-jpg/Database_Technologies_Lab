/* Full Question: Modify the medicine document structure to include supplier information as an embedded document containing name, phone, and city. Insert at least three medicines containing embedded supplier information. Retrieve and display medicine and supplier information through Flask. */

from pymongo import MongoClient
medicines=MongoClient('mongodb://localhost:27017/')['HospitalDB']['medicines']
medicines.insert_many([{'medicine_id':401,'name':'Paracetamol Plus','category':'Painkiller','price':40,'stock':35,'manufacturer':'ABC Pharma','supplier':{'name':'MedSupply','phone':'9999999999','city':'Delhi'}},{'medicine_id':402,'name':'Cough Syrup','category':'Cold','price':75,'stock':18,'manufacturer':'HealthPlus','supplier':{'name':'CareDist','phone':'8888888888','city':'Meerut'}},{'medicine_id':403,'name':'Calcium','category':'Supplement','price':95,'stock':22,'manufacturer':'NutriLife','supplier':{'name':'PharmaLink','phone':'7777777777','city':'Haridwar'}}])
print(list(medicines.find({'supplier':{'$exists':True}},{'_id':0})))
