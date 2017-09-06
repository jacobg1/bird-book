# Project 2 Evaluation

## Technical Requirements
**2: Performing**
>The app contains 2 models, with at least 1 association. At least 1 model is full CRUD.

## Creativity and Interface
**1: Progressing**
>The app is styled and has an interface of value to the end user: it is not just a nav bar and an index page

## Code Quality
**3: Excelling**
>No major code quality issues, makes use of Ruby best practices appropriately, and follows techniques such as separation of concerns, abstraction, and encapsulation

## Deployment and Functionality
**2: Performing**
>Application contains no major errors, is deployed correctly, and contains a custom Heroku app name appropriate for the app.

## Planning / Process / Submission
**2: Performing**
>Submission contains clear evidence of planning, adequate documentation, include all from previous category, as well as additional information such as unsolved issues.


Great job on this project! Good formatting, and very succinct code. It functions quite well.

Notes:
- Consider having the new Guess form included on your Post page just above the guesses list. It saves the user a click to already be presented with the option to add a guess right away.

- Your routes were quite well structured with nesting and additional member routes, however, many of your controllers didn't implement all of the default actions. We should take advantage of `except` and `only` in routes.rb in order to restrict the available routes.