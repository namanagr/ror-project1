## Version control ## 

# Currently we are coding without any backup of our code. 
# We will use GIT for version control. 
# Before we get started with GIT, we have to set some configuration items and we only have to do this once. 

#> Go to the ruby project folder
#> git --version
#> git config --global user.name "Naman Agrawal"
#> git config --global user.email "namanagr@gmail.com"
#> git config --list

# Then we initlize the GIT repository for the ruby application. It creates an empty git repository.
#> git init
#> git add -A # Now it is tracking all the files
#> git status # Shows all the files being tracked

# The files are being tracked but no saved anywhere
#> git commit -m "Create rails application and setup home and about pages."
#> Now our application configuration is saved in the git repository. 

# If we want any folder / files to be ignored by git, add them to .gitignore file.
#> git checkout -f # Replaces the current folder with the commited files in the git repository. 

# How to backup your code and share it with others ?
# We need to use a code repository for that. 
# Famous code repositores - Hithub and Bitbucket. 

# Setting up the github account. 
# Log in to the github account https://github.com
# Select SSH. 
# That will allow us to push our code to the Github account wihtout a need to enter any username or password. 
# Click on "New Repository" > Create Repository. 
# We ned to push the existing repository from the command line. Follow the instructions given over there.

#> git remote add origin git@github.com:namanagr/ror-project1.git # For this app, this folder is the origin
#> git push -u origin master # Copy our local repositoty to Github

#  git remote -v # To check whether the files got added to the repository
# Now, refresh the Github page and we should see all the files over there. 




