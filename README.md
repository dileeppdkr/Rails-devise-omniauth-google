# Rails-devise-omniauth-google
user signing in via Google 

## Things you need to install:

* Framework
	- rails, -> 5.2.2
* Ruby
	- ruby '2.3.1'
* Database
	- PostgreSQL 9.6.5
* System dependencies
	- devise
	- omniauth
	- 'omniauth-google-oauth2', '-> 0.4.1'
* Setup
	- Go to https://console.developers.google.com and login with your google account.
	- Create / select project
	- Click on Credentials and click on the “OAuth consent screen” tab to set up
	- Under credentials the tab, create an OAuth client ID
	- You require the client ID and client secret for your rails app

## Installation

    git check out https://github.com/dileeppdkr/Rails-devise-omniauth-google.git

    cd /project_folder

    rake db:migrate

    rails s/server

## Usage
1. Login/Register 
2. Login/Register using google 
3. reset password instructions 
