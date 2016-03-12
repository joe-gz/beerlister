### Project Feedback + Evaluation

| Score | Expectations |
| :---- | :----------- |
| **0** | _Does not meet expectations_ |
| **1** | _Meets expectactions_ |
| **2** | _Exceeds expectations_ |

## Project Workflow
##### How effectively did you plan, execute, and present this project?
- [x] The `readme.md` file contains any necessary installation instructions
- The `planning` folder contains:
  - [x] a picture / screenshot of your ERD (up to date!)
  - [x] a `wireframes` directory, which in turn contains at least 2 drawings or photos of wireframes and ERDs
  - [x] a `user_stories.md` file, which in turn contains at least 7 user stories (or a link to a Trello board or equivalent)
- [x] A Github issue was submitted to the `project2` repository **by 11:00am on Friday, November 20<sup>th</sup>,** containing a link to a hosted video
- [x] The video itself and/or the site on which it can be found contains a website or email address through which the creator can be contacted
- [x] The video is at least 3 minutes long, but **no more than** 5 minutes
- The video contains:
  - [x] A description and demo of the app
  - [x] A code sample explaining one thing of which the creator is proud
  - [x] One thing the creator would do differently next time
  - [x] The next feature the creator would like to implement
**Exceeds Expectations**

## Technical Requirements
##### How well does your app demonstrate a grasp of the technologies introduced in class?
- [x] App contains at least 2 models
- [x] App contains at least 1 association
- [x] At least 1 model incorporates `GET`, `POST`, `PUT`, and `DELETE` routes
- [x] Includes sign up, log in, and log out functionality
- [x] Utilizes an ORM to create database structure
**Exceeds Expectations**

## Creativity / Interface
##### How memorable and enjoyable to use is your app?
- [x] The app displays a personal spin or creative element through its written language, functionality, purpose, and/or CSS
- [x] The app delivers something of value to the end user: it is not just a login button and an index page
**Exceeds Expectations**

## Code Quality
##### How able would an uninformed programmer be to reuse and extend your code?
- [x] The code follows style guidance and best practices covered in class, such as spacing, indenting, modularity, and semantic naming
- [X] The code is commented only with what is necessary to document what is happening in the code
- [x] For any page, copying its source code as it appears in the **browser** and pasting it into the [W3 Validator](http://validator.w3.org) yields 0 errors
**Exceeds Expectations**

## Deployment and Functionality
##### How accessible is your app to those who may want to explore it?
- [x] Cursory use of the app by an uninformed user yields no errors that "break" it
- [x] The app is deployed to Heroku (or another hosting service)
- [x] The contents of the creator's Github repository is identical to that of the Heroku repository
- [x] The `URL` field of the Github repository contains a link to the deployed version of the app
**Meets Expectations**

## Overall
**Exceeds Expectations** Fantastic work, Joe! Your code goes above and beyond the basic requirements of the assignment, with six models including a class wrapper for server-side api calls. Also impressive is that you successfully researched and integrated an api that's a bit off the beaten path.

As a user, I ran into a couple of bugs. Neither broke the app, but definitely things you'll want to patch before sending your portfolio to a potential employer.

First, attempting to add a beer to a night when the user hasn't created any nights yet understandably leads to a error page. On a pure code level, you could solve this by adding validations to the drinklist model and an `if save redirect_to night_path, else redirect_to beer_path` with appropriate flash messages for both cases. On a user experience level, you might consider a) replacing that dropdown with a link to create a new night if none exists yet, b) automatically creating a new night for the beer if none exists, and/or c) having nights index be the user's entry point instead of the beers index.

Second, as you noticed, something is squirrelly with your landing page in different browsers. This is actually a CSS/HTML/JS issue. Browsers aren't always quite sure what to do with <a> tags inside of <button>s. Your better options are to use the button to trigger a JS event or get ride of the <button> tags all together and simply style those <a> tags to look like buttons.

Overall, however, As always, your planning and code quality are high-quality and thorough. Your comments are particular noteworthy this time around!
