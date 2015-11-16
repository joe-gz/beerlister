# beerlister

This app will allow users to post about beers they drink throughout a night, or simply select favorite beers and have them logged.
A user will be able to add a beer to the public domain so that other users can then add to their nights as well.  Each "night" belongs to one user.


Models:
Users, beers, nights, comments, drinklist(join table between beers and nights)

To-do:
1) Add Night and Drinklist model and connect with beers on main page
2) Create user profile page that shows only beers user has created
3) Users should only be able to edit beers that they posted, but should be able to see any of them
4) Users should be able to comment or add pictures to their own nights, but can also comment on ANY beer in the public space
5) Add styling
6) Add JS buttons for help and settings

Done:
Added Beer and User model
Can add beers, edit, and delete
Users can sign up, sign in, and logout

Bonus:
1) Add AWS so users can post their own pictures
2) Figure out how to add in API data to allow users to select beers instead of entering in all of the information
3) Include a Favorite model for user profiles
4) Can users sign in with FB?
5) Add map box - week 10 curriculum
