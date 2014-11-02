FRIDAY CHALLENGE 4 - Part 2 - TAKEAWAY
======================================

@ Makers Academy
----------------

Modelling a takeaway in Ruby using Rspec and Test doubles.

Skills learnt/used
-----------------
> * Ruby
> * Rspec
> * Twilio SMS
> * OOP
> * TDD
> * Classes
> * Inheritance


How to use
----------

The takeway takes orders and send them by text via the twllio API.


Clone the repository:

```shell 
$ git clone https://github.com/ch2ch3/airport-challenge.git

```

run rspec to view the tests:

```shell 
$ rspec
```

Cd into the directory and install the twillio gem:

```shell 
$ cd takeaway
$ gem install twilio-ruby
```

Load irb:

```shell 
irb
```

Require the takeaway files from irb:

```ruby
irb> Dir["lib/*.rb"].each {|file| require file }
```



Sign up for a [twillio accout](https://www.twilio.com) and create a new messenger by adding you authorization details. 

```ruby
irb>  messenger = Messenger.new("Your twillio sid","Your twillio auth token")
```

Create you takeaway and add some dishes

```ruby
irb>  messenger = Messenger.new("Your twillio sid","Your twillio auth token")
```

Once youve created an order send a text to a phone

```ruby
irb>  m.send_text('a valid twillio phone number','Your phonenumber',your order)
```


