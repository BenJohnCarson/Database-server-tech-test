# Database-server-tech-test
#### Technologies: Sinatra, Ruby, RSpec/Capybara

## Index
* [Task] (#Task)
* [Installation] (#Install)
* [Usage] (#Usage)
* [Approach] (#Approach)
* [User Stories] (#Stories)

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
$ rackup -p 4000 -o $IP
Open your prefered browser and navigate to http://localhost:4000

* Running tests
```
$ rspec
```

## <a name="Approach">Approach</a>

To begin, I needed to decided which technology to use. I chose Sinatra as I belive it suffiently meets the requirements of the challenge without providing unnecassary complexity.

My next step was to turn the brief into user stories that I could use to write feature tests.


## <a name="Stories">User Stories</a>

As a server
So that I can pass data to a database
Params from post requests I receive should be passed into memory

As a server
So that I can pass data to a client
Get requests I receive should return the correct value
