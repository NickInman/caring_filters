Filters index is the root controller, the index action takes in form input from app/views/index.html.erb

That input is sent to app/services/search_db which acts as if it is interacting with an external API, currently it takes in 3 arguments and iterates over the parsed JSON data to push the results that pass the requirements.  

That data was going to be saved to a separate model, instead it is passed back to the filters_controller which gets displayed below the search menu.  

In order to finish the search filters I would change the if statement on line 9 in services/search_db.rb to a case statement to clean up the code a bit.

In order to minimize issues I would change the text fields into drop down selections which would help limit errors on both the users side and the database side.
