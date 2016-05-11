# Q0: Why is this error being thrown?
The error is uninitialized constant HomeController::Pokemon
Because there is no Pokemon model yet.


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
There are total 4 Pokemon. We use Array::sample method to randomly pick a wild pokemon.
Common factor is they have no trainer.


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that send http patch request to url /capture?id=#{@pokemon.id}


# Question 3: What would you name your own Pokemon?
Show the list of pokemon at: app/views/trainers/show.html.erb
I don't really understand the question. Check my code for the change I made.


# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I pass a trainer object to redirect_to
If it is a path, it need a trainer id.
redirect_to will figure out how to generate path if you pass in a ActiveModel instance.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This works because in views/layouts/application.html.erb, it is rendering something at the very end.
It calls <%= render 'layouts/messages' %>
'layouts/messages' is a partial, and it output a list of div contain error message in flash.
<% flash.each do |name, msg| %>
  <% if msg.is_a?(String) %>
    <div data-alert class="alert-box round <%= name.to_s == 'notice' ? 'success' : 'alert' %>">
      <%= content_tag :div, msg %>
      <a href="#" class="close">&times;</a>
    </div>
  <% end %>
<% end %>


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
