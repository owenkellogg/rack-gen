# Rack::Generator

## USAGE

	rack new myappname
    cd myappname
    bundle install
    rackup

My motivation for creating this gem was to uncomplicate the process of learning to deploy a web site using ruby and heroku. When I try to teach rails to people there is usually too much information for them to handle all at once, especially from the beginning. Rails generates so many files for you and then you must ask the students to not worry about what is going on with the majority of the files. One solution to this problem is to have the students begin with the sinatra framework, which strips out almost everything rails offers by default and makes it possible to run simple static ruby server applications. Both rails and sinatra are based on a lower-level framework that is directly responsible for handling http requests and responses. Since it is inherently valuable to start from the most fundamental principles and build increasingly complex abractions on top I like to start students off with the most basic rack server application that can be deployed to heroku. 

