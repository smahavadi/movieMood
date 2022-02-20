
# moodlio

moodlio is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#) based on their mood.
---

A visual mockup of our app can be found at https://www.figma.com/file/OIC5C8HWft3KZ7HMaEPUnS/movie?node-id=0%3A1

## User Stories
- [x] User sees an app icon on the home screen and a styled launch screen.
- [x] User is prompted with option to login, sign up, or continue as a guest
- [x] User is prompted with option to choose their mood
- [x] User can customize mood with genre
- [x] User can view the movie poster image for each movie.
- [x] User can tap a poster in the collection view to see a detail screen of that movie.
- [x] In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

## App Walkthrough GIF

### *Guest User*
<img src="https://github.com/smahavadi/movieMood/blob/main/movies/GIFS/guest.gif" width=250><br>

### *Sign Up User*
<img src="https://github.com/smahavadi/movieMood/blob/main/movies/GIFS/sign up.gif" width=250><br>

### *Login User*
<img src="https://github.com/smahavadi/movieMood/blob/main/movies/GIFS/login.gif" width=250><br>


## Detailed Project Description
This project allows a user to either login, sign up, or use the app as a guest and view movie recommendations based on their mood.

For someone who uses the app like a guest, the app:
* prompts the user to choose their mood
* displays a movies board, based on their mood and default preferences (preferences refer to the selection of genres based on a given mood) (still a work in progress)

For someone who signs up for the first time, the app:
* requests the user to set up their preferences using a drop down menu (still a work in progress)
* requests the user to choose their mood
* displays a movies board, based on their mood and saved preferences (still a work in progress)

For someone who logs in, the app:
* asks the user to input their credentials (email and password, where password entry is secure)
* asks the user for their current mood
* displays a movies board, based on their mood and saved preferences (still a work in progress)

Once the user reaches the movies board, they can view a collection of movie posters. They can click on a poster, and the backdrop of the movie, the name, and the synopsis are displayed along with buttons to change the genre or mood that they are currently in. The user can choose to click on the backdrop to display a trailer of the movie (currently a work in progress). The "change genre" button routes the user back to the screen where they can customize the genres that show up based on their moods. The "change mood" button routes the user back to the screen that allows the user to pick a mood.

## Notes about Implementation and Further Development
Our goal is to implement all functionalities that are currently in progress to create the optimum app that chooses a selection of movies based on your mood. In the future, we would also like to host movies to allow the user to watch the movies they select within the app as well. We currently only have 3 main moods (happy, sad, stressed) but we would also like to implement more moods like angry, excited, or anxious. We plan on implementing a machine learning AI, much like what can be found in streaming services liek Netflix, in order to tailor the app towards the current user.
