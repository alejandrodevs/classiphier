# Classiphier
[![Build Status](https://travis-ci.org/alejandrogutierrez/classiphier.png?branch=master)](https://travis-ci.org/alejandrogutierrez/classiphier)
Classifier module using Bayesian's theorem.



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
classifier.train :negative, 'This tweet is not good. I hate it!'
classifier.classify 'I like these tweets' # => :positive
```
