%dw 2.0
output application/json skipNullOn="everywhere"
var dev={
"data": [{
"id": 1,
"name": "origin"
},{
"id": 2,
"name": "given"
},{
"id": 3,
"name": "date"
},{
"id": 4,
"name": "type"
}]}

var dev2=[
{
"origin": "Portal",
"given": true,
"date": "2020-11-15T14:28:20",
"type": "express"
}]
---
//combining two variables into one object
attributes:dev.data map ((item, index) ->{attribute_id:item.id,
//calling var dev and then iterating by using map operator

fil: if(item.id as Number == 1) dev2.origin[0] else null,
//using if-else statement mapping the values of dev2 to dev and 
//to get the value from an array we use[0] for removing array

attribute_id_value:if(item.id as Number == 2) dev2.given[0] else null, 
attribute_id_value:if(item.id as Number == 3) dev2.date[0] else null,
attribute_id_value:if(item.id as Number == 4) dev2."type"[0] else null }
)
//as above we are using if-else condition and to concatinate two variables to single object