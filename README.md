# Database-server-tech-test
#### Technologies: Sinatra, Ruby, RSpec/Capybara

## Index
* [Task](#Task)
* [Installation](#Install)
* [Usage](#Usage)
* [Approach](#Approach)
* [User Stories](#Stories)
* [Possible Extensions](#Extensions)

## <a name="Task">Task</a>
Write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code.

## <a name="Install">Installation</a>
* Clone from github
```
$ git clone https://github.com/BenJohnCarson/Database-server-tech-test.git
```

* Switch to ruby 2.3.3
```
$ rvm use 2.3.3
```

* Install gems
```
$ gem install bundler
$ bundle
```

## <a name="Usage">Usage</a>
* Start the server
```
Navigate to the route folder
$ ruby app/app.rb
Open your prefered browser and navigate to http://localhost:4000
Use http://localhost:4000/set?somekey=somevalue in your browser to pass in a key/value pair
Use http://localhost:4000/get?key=somekey in your browser to return a key value

```

* Running tests
```
$ rspec
```

## <a name="Approach">Approach</a>

To begin, I needed to decided which technology to use. I chose Sinatra as I belive it suffiently meets the requirements of the challenge without providing unnecassary complexity.

My next step was to turn the brief into user stories that I could use to write feature tests.

My initial instinct to implement the first user story was to setup a form to allow a post request of the data. However since there's no mention of an interface in the brief I instead opted for the simplest approach and passed in the data via get request.

Next I created the DataModel class to hold the data in memory. This has two methods that allows saving data to a hash and accessing data from a hash.

To keep the data in memory I decided to use sessions.

To finish I thought about how I'd hook up DataModel to a database. To do this, I would use postgreSQL and DataMapper. The DataModel would have three properties: id, key\_name and key\_value. The params would be passed in and split into key and value by the private methods and then saved into their respective property columns.

## <a name="Stories">User Stories</a>
```
As a server
So that I can pass data to a database
Params from requests I receive should be passed into memory

As a server
So that I can pass data to a client
Get requests I receive should return the correct value

```
## <a name="Extensions">Possible Extensions</a>

* Allow data to be submitted through a form so the more secure POST verb can be used to store data
* Allow mulptiple key/value pairs to be passed through at once
