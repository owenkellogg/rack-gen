# Rack::Generator

Rack Generator is used to create the most basic ruby web application using the rack framework.

Rack is the underlying technology behind popular web ruby frameworks like sinatra and rails. The gem was designed to be the perfect tool for introducing students to ruby on the web and get them started with basic html, css, and javascript

## INSTALLATION

    git clone https://github.com/stevenzeiler/rack-generator.git
    gem build rack-generator.gemspec
    gem install rack-generator-0.0.2.gem

## USAGE

Generate a new rack application, which consists of three files.

	  rack new myappname
  
You will see output from several operations, which will are explained below

    Initialized empty Git repository in /Users/stevenzeiler/Desktop/szrack/.git/
    Fetching gem metadata from https://rubygems.org/..........
    Resolving dependencies...
    Using rack (1.5.2) 
    Using bundler (1.3.5) 
    Your bundle is complete!
    Use `bundle show [gemname]` to see where a bundled gem is installed.
    [master (root-commit) 09f1907] add most basic rack app
     4 files changed, 46 insertions(+), 0 deletions(-)
     create mode 100644 Gemfile
     create mode 100644 Gemfile.lock
     create mode 100644 config.ru
     create mode 100644 index.html
    Creating evening-brushlands-9923... done, region is us
    http://evening-brushlands-9923.herokuapp.com/ | git@heroku.com:evening-brushlands-9923.git
    Git remote heroku added

1. A directory is created given the name you specify in the create command. In this case it is `myappname`.

2. A git repository is created in the project directory.

3. Three files are copied into the project directory. These files are the mininum needed to serve a web page with ruby:

  - Gemfile - bundler uses this file to download the right gems. Our rack app requires only the `rack` gem.
  - config.ru - runs two commands to set up the rack server and configure public file access.
  - index.html - the 'single-page' application file that represents the visual user interface.

4. A /public directory is created from where files can be downloaded over the web.

5. The `bundle` command is run, which downloads the required gems and creates a Gemfile.lock. The lock file is required by Heroku in order to download the proper gems.

6. The four files and one directory are copied into the git repository.

7. A heroku application is created and the `heroku` remote is added to git. You can now push to heroku, which happens next automatically.

8. The rack app is pushed to heroku, where a virutal linux machine is provisioned. When the build process is finished the rack app will open in your system's default browser.


## Running Locally

To run the application locally start a web server with rack's startup mechanism. Navigate to the project directory and run:

    rackup

`Rackup` will look for a file named `config.ru` ("ru" stands for "rackup") and run its contents in hopes of finding a rack-compatible object to execute.

    
## Motivation

My motivation for creating this gem was to uncomplicate the process of learning to deploy a web site using ruby and heroku. When I try to teach rails to people there is usually too much information for them to handle all at once, especially from the beginning. Rails generates so many files for you and then you must ask the students to not worry about what is going on with the majority of the files. One solution to this problem is to have the students begin with the sinatra framework, which strips out almost everything rails offers by default and makes it possible to run simple static ruby server applications. Both rails and sinatra are based on a lower-level framework that is directly responsible for handling http requests and responses. Since it is inherently valuable to start from the most fundamental principles and build increasingly complex abractions on top I like to start students off with the most basic rack server application that can be deployed to heroku. 

