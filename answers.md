# Q0: Why is this error being thrown?
The error is uninitialized constant HomeController::Pokemon
Because there is no Pokemon model yet.


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
There are total 4 Pokemon. We use Array::sample method to randomly pick a wild pokemon.
Common factor is they have no trainer.


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.


# Question 3: What would you name your own Pokemon?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
