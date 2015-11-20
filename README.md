# beerlogger

https://beerlogger.herokuapp.com/

This app will allow users to post about beers they drink throughout a night, or simply select favorite beers and have them logged.
A user will be able to add a beer to the public domain so that other users can then add to their nights as well.  Each "night" belongs to one user.

The approach I took to this was very much step-by-step.  I first wanted to get the two model, users and beers, app working. I then refactored a couple times as I layered in additional models.
Once I had the basic functionality, I looked to add in more complicated aspects such as AWS, API data, and additional features such as beer counts

#Technologies used
Rails,
AWS,
Brewerydb API,
css,
html,

#Installation Instructions
Fork and clone this repo.

Run bundle install in your CLI once in the project directory.

Since I used AWS, if you want to reuse this project you will have to create your own access keys from AWS.

Once done, you will also have to install the fog and figaro gems and install them.

The same will need to be done for the API data.

#Models:
Users, beers, nights, comments, drinklist(join table between beers and nights)

#Would've liked to do:

Add cancancan.
Add favorites.
sign in w/FB.
Add JS buttons for help and settings.

#Done:
Added Beer and User model.
Can add beers, edit, and delete.
Users can sign up, sign in, and logout.
1) Add Night and Drinklist model and connect with beers on main page.
3) Users should only be able to edit beers that they posted, but should be able to see any of them.
2) Create user profile page that shows only beers user has created.
4) Users should be able to comment or add pictures to their own nights, but can also comment on ANY beer in the public space.
5) Add styling.

#Done Bonus:
1) Add AWS so users can post their own pictures.
2) Figure out how to add in API data to allow users to select beers instead of entering in all of the information.
