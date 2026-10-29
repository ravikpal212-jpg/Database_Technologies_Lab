/* Full Question: Write and execute MongoDB queries to display medicines belonging to a particular category, costing more than ₹50, costing less than ₹100, stock less than 30, manufactured by a particular manufacturer, and sort medicines according to price and stock. */

# PyMongo filters and sorting
medicines.find({'category':'Antibiotic'})
medicines.find({'price':{'$gt':50}})
medicines.find({'price':{'$lt':100}})
medicines.find({'stock':{'$lt':30}})
medicines.find({'manufacturer':'ABC Pharma'})
medicines.find().sort('price',1)
medicines.find().sort('stock',-1)
