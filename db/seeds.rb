# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Beer.destroy_all
Night.destroy_all
Drinklist.destroy_all
# Song.destroy_all

Beer.create(name:"Loose Cannon",beer_type:"Ipa",brewery:"Heavy Seas", photo_url:"https://s3.amazonaws.com/brewerydbapi/beer/Bt79WS/upload_Llgyrj-large.png",abv:"7.25")
Beer.create(name:"Budweiser",beer_type:"Lager",brewery:"Anheuser-Busch", photo_url:"https://s3.amazonaws.com/brewerydbapi/beer/1P45iR/upload_Y13vwL-large.png",abv:"5")
