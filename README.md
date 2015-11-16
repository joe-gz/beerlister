# beerlister

This app will allow users to post about beers they drink throughout a night, or simply select favorite beers and have them logged.
A user will be able to add a beer to the public domain so that other users can then add to their nights as well.  Each "night" belongs to one user.


Models:
Users, beers, nights, comments, drinklist(join table between beers and nights)

To-do:
Add Night and Drinklist model and connect with beers on main page
Create user profile page that shows only beers user has created
Users should only be able to edit beers that they posted, but should be able to see any of them
Users should be able to comment or add pictures to their own nights, but can also comment on ANY beer in the public space
Add styling
Add JS buttons for help and settings

Done:
Added Beer and User model
Can add beers, edit, and delete
Users can sign up, sign in, and logout

Bonus:
Add AWS so users can post their own pictures
Figure out how to add in API data to allow users to select beers instead of entering in all of the information
Include a Favorite model for user profiles
Can users sign in with FB?
