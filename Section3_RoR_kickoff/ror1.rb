# RoR or simply Rails is a web application development framework.
# RoR is totally open source.
# It has a very big community, thats why it is very famous and widely used.
# Rails take away the initial hassles of web development.
# Makes web development very easy.
# rubyonrails.org

# Rails is a Full Stack solution -> It has a front end, back end and db connectivity

## What are the componentss of a Rails Application ?
#- Rails is a framework and a framework has several components

rails new test_app # Creates a new rails application - test_app
# Bundle installs all the gems 
# Rails follows a MVC structure - Model, View, Controller
# It uses MVC pattern of web application development

#> User issues an HTTP GET request that is received by the "Router" in the Rails Application.
#> The "Router" then forwards that request to an appropriate "Controller".
#> The "Controller" either renders a "View" or it reaches out to the "Model".
#> The "Model", based on the request, either updates or fetches data from the Database and provides to the "Controller".
#> The "Controller" then renders as "View".

## Directory structure of a Rails Application ## => 

#> app > assets > Contains static images, JS, CSS files
#> app > controllers > Contains the controllers of the Rails application.
#> app > helpers > Where we extract our common logic. Only used for "Views"
#> app > mailers > For mailing purpose
#> app > models > All the "Models" will be stored here
#> app > views > All pages that will be rendered to the user are stored here.

#> bin > We have executables here. We do not touch the files in this folder.

#> config > database.yml > Tells the Rails Application how we want it to communicate with the database. By default - sqlite3
#> config > routes.rb => Routes for your application
#> config > environments > Settings for the development, production and test environment
#> db > stores all the db tables / migration tables
#> lib > assets / tasks > We will not be using it as we will be storing our assets in app > assets
#> log > server log files
#> public > default public pages "Views", that Rails comes with E.g. 404 page, robots.txt
#> test > in test we have configured automates tests, those will be housed here
#> tmp / vendor > We need not worry about
# vendor > Gemfile > Entries of all the gems that the Rails application comes have.
# vendor > Gemfile.lock > This is where dependencies and versions of installed Gems are stored.

## Starting a Rails Server - A webRICK server
#> rails server -b 0.0.0.0
#> To shudown the server, press "Ctrl+C"

## In a commercial projects, we use two server, development and production server.
# Prodcution server is up 24x7 and alwasy serving the clients We'll use Heroku for this.
# Develpment server is internal and is used for development and testing.

## Now, let us create the home page of our Rails application

## First, let us create a route for the URL /welcome/home
#> To see the routes defined for the Rails application, use the command - "rake routes"
#> To to config > routes.rb and add the route -
#> get "welcome/home", to: "welcome#home" # This route goes to "Welcome" controller to its "control" action.
#> Check the route again by "rake routes".

## Second, let us now create a controller. 
#> Crete a file app > controller > welcome_controller.rb
### Start of Code ###
class WelcomeController < ApplicationController # Create a class "WelcomeController" that extends(inherits) the class "ApplicationController"
  def home # Define the action (method) "home"
  end
end
### End of Code ###

#> Thirdly, let us create the "view" for welcome/home. For that, create the folder app > views > welcome.
#> In the "welcome" folder, create the file "home.html.erb".
### Start of Code ###
#> <h1>This is the home page</h1>
### End of Code ###

#> Test by http://<>/welcome/home => Should display the homepage.
#> Now, let us create the welcome/about page. 

## Adding embedded ruby code in the html pages to provide link to home and about pages. 

#> home.html.erb ->
#> <%= link_to "About" ,welcome_about_path %>
#> about.html.erb -> 
#> <%= link_to "Home" ,welcome_home_path %>

#> <% %> Code written between these is ruby code. 
#> By default, this code does not display an output on the web page. To get the output displayed, make it <%= %>

## The default page still shows the rails message. We want to change that. 
#> We want the home page to get displayed by default. 
#> For that, we will have to chage the routes. 
#> Go to config > routes.rb file and make it look like following - 

#>START<#
#> root "welcome#home" # This route goes to "Welcome" controller to its "control" action. By action, we mean the "method"
#> get "about", to: "welcome#about"
#>END<#

#> Now, make the welcome/home.html.erb look like following - 

#>START#<
#> <h1>This is the home page</h1>
#> <%= link_to "About",about_path %>
#>END#<


#> Then, make welcome/about.html.erb look like the following - 

#>START<#
#> <h1>This is the about page</h1>
#> <%= link_to "Home" ,root_path %>
#>END<#

# Should work perfectly now. :)




