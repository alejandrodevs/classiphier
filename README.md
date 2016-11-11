# Classiphier
[![Build Status](https://travis-ci.org/alejandrodevs/classiphier.png?branch=master)](https://travis-ci.org/alejandrodevs/classiphier)

Classifier module using Bayesian's theorem.

*This is another implementation based on cardmagic/classifier.*



## Installation
Add this line to your Gemfile:

```ruby
gem 'classiphier'
```
Run the bundle command to install it.



## Getting started
```ruby
require 'classiphier'

classifier = Classiphier::Bayes.new
classifier.train :positive, 'This is a great tweet. I like it!'
classifier.train :positive, 'With great power comes great responsibility'
classifier.train :negative, 'This tweet is not good. I hate it!'
classifier.train :negative, 'Here are some bad words, I hate you'

classifier.classify 'I like these tweets' # => :positive
```
