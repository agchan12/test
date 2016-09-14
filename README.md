# BigCommerce Assignment

Project source can be downloaded from https://github.com/agchan12/BigCommerce.git

## Author and Contributor

Andrew Chan

## File List

1. Gemfile
  * gem package control file.
2. router.rb
  * Controller, map the URL with certain method.
3. twitter_client.rb
  * Service code, connecting twitter API, fetch data and handle the logic.
4. tc_twitter_client.rb
  * Unit test code. mainly tesintg Question 3.
4. test.sh
  * A shell script, used as automatic test for Question 1 and 2.


## Setting up

### 1. Install necessary working environment

#### Installation

The whole project is written in ruby. Please install ruby developement environment first

Then run the following commands in terminal

NOTE: When running "gem install bundler" and it asks for permission. Try "sudo gem install bundler"

    gem install bundler
    bundle install

This will install all necessary libraries

### 2. How to run the code

#### Running the code
    cd /path/to/folder
    ruby router.rb

### 3. Unit Test

NOTE: Make sure to have run the command "ruby router.rb" before continuing

#### Running the tesing code
    cd /path/to/folder
    ruby tc_twitter_client.rb

### 4. Automatic Test

Q1 and Q2 only ask to return text value. Using selenium test seems be too much,
So I wrote a shell script that act as automatic test.

Running requirement: "curl" command tool must be installed.

NOTE: Make sure to have run the command "ruby router.rb" before continuing
NOTE: If after running the command "sh automatic_test.sh" returns an unexpected operator command. Run "bash ./automatic_test.sh"

#### Running the tesing code
    cd /path/to/folder
    sh automatic_test.sh


## About Questions

NOTE: Make sure to have run the command "ruby router.rb" before continuing

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
