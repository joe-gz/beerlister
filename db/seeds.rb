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

Beer.create(name:"Loose Cannon",beer_type:"Ipa",brewery:"Heavy Seas", photo_url:"http://www.workman.com/ecookbook-club/wp-content/uploads/2014/01/loose-cannon1.png",abv:"7.25")
Beer.create(name:"Budweiser",beer_type:"Lager",brewery:"Anheuser-Busch", photo_url:"http://deerparkpub.com/wp-content/uploads/2014/07/Budweiser.jpg",abv:"5")

# artist.songs.create(title:"Ordinary People", album:"Get Lifted", preview_url:"https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0CIQBEMgpMABqFQoTCLv_q9Dhg8kCFUbSYwodmxoEig&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DPIh07c_P4hc&usg=AFQjCNFPVs26MuwHRqRoq1cUb9SZbLKKdQ&sig2=jdEh70JGnFhJS8jfQM03fw&bvm=bv.106923889,d.dmo")
# artist.songs.create(title:"All of Me", album:"Love in the Future", preview_url:"https://www.youtube.com/watch?v=450p7goxZqg")
