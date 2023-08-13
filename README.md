# digital_currency
System for purchasing gift cards.

## System Description
Brands offer a discount on gift cards which can be spent in their store. 
Customers can add multiple gift cards from different brands to thier basket. 
The total price to be paid for a giftcard is the face value of the card minus the discount.

## Implementation Details
`lib/digital_currency.rb` is the main entry point of the project. 

This project does no use a database, as such it is necessary to pass object instances around.
This is opposed to loading them from a database using foreign keys. 

The lack of persistence layer and database means that factory bot can only build objects (not save them). In factories
ojects are initialised with attributes, this means it is not necessary to expose attributes as public in order to be
able to create them with factories.
