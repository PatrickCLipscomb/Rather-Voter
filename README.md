#  Rather Voter
## *By Patrick Lipscomb*

Rather Voter is a fun clone of [rrrather](www.rrrather.com) that will allow users to vote for their favorite choice, comment on questions, and see other users' choices.

## Technologies Used

* **Application**: *Ruby on Rails 5*<br>
* **Testing**: *Rspec, Capybara, Simplecov, FactoryGirl, PhantomJS, Poltergeist*<br>
* **Database**: *Postgres, ActiveRecord*

Installation
------------

Install *Rather Voter* by cloning the repository.  
```
$ git clone https://github.com/PatrickCLipscomb/Rather-Voter.git
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Run Postgres:
```
$ postgres
```

Navigate to project file and migrate database:
```
$ rake db: create
$ rake db: migrate
$ rake db: seed
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Patrick Lipscomb**
