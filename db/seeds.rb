R = Random.new 19

CITY  = ["Cairo", "Alex", "Mansoura", "Aswan"]
GOOD  = [["Mouse", 10],  ["Screen", 700], ["CPU", 4000], ["Keybaord",150], ["Iphone 6",6000], ["Galaxy S5", 5000]]
DATE  = ["2015-1-1", "2015-1-7", "2015-1-9"]

def getRandom(a)
   i = R.rand(0...(a.length))
   a[i]
end

100.times do
   city = getRandom CITY
   g = getRandom GOOD
   good  = g[0]
   price = g[1]
   date = Date.parse(getRandom DATE)
   puts "#{city}, #{good}, #{price}, #{date}"
   #Add code here to save the record to the database.
   Sale.create(city: city, good: good, price: price, date: date)
   
end

