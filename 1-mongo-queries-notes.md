# $geoWithin & $nearSphere

- search all documents in mongodb collection to find the matching result within a specified radius of the origin lat and long

## Create 2dsphere index

`db.restaurants.createIndex( { "location" : "2dsphere" } )`

`db.restaurants.getIndexes()`


https://docs.mongodb.com/manual/reference/operator/query/nearSphere/#op._S_nearSphere

```yaml
mongo

use restaurants

db.restaurants.getIndexes()

db.restaurants.dropIndexes()

db.restaurants.find(
   {
     location: {
        $nearSphere: {
           $geometry: {
              type : "Point",
              coordinates : [ -73.856077, 
              40.848447 ]
           },
           $minDistance: 1000,
           $maxDistance: 5000
        }
     }
   }
)
```
- or

```yaml
db.restaurants.find(
   {
     location: {
        $nearSphere: {
           $geometry: {
              type : "Point",
              coordinates : [ -73.856077, 
              40.848447 ]
           }
        }
     }
   }
)
```
