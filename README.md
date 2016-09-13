# BigCommerce Assignment

Project source can be downloaded from https://github.com/agchan12/BigCommerce.git

## Author and Contributor

Andrew Chan

##File List

Gemfile

index.rb

README.MD

## Setting up

### 1. Install necessary working environment

#### Installation

Run the following commands in terminal

NOTE: When running "gem install bundler" and it asks for permission. Try "sudo gem install bundler"

    gem install bundler
    bundle install

This will install all necessary libraries

### 2. How to run the code

#### Running the code
		cd /path/to/folder
		ruby index.rb


## Questions

NOTE: Make sure to have run the command "ruby index.rb" before continuing

### Question 1

To run this segment of the code, open up the browser and type in the URL 

http://localhost:4567/ 

You should be presented with a page with the words 

"Try /hello/:name"

### Question 2

To run this segment of the code, open up the browser and type in the URL 

http://localhost:4567/hello/[variable]

Where the "[variable]" is the input.

You should be presented with a page with the words "Hello [variable]"

### Question 3

To run this segment of the code, open up the browser and type in the URL 

http://localhost:4567/historgram/[variable]

Where the "[variable]" is the Twitter account name.

You should be presented with a page of numbers in the format of 

"0":x, "1":x, "2":x ..."

Where the number to the left of the colon represents every hour for the past 24 hours

The x represents an arbitrary number of tweets from that account for the hour respectively. 

