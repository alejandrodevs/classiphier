# Classiphier
[![Build Status](https://travis-ci.com/alejandrodevs/classiphier.svg?branch=master)](https://travis-ci.org/alejandrodevs/classiphier)

Classifier module using Bayesian's theorem.
*This is another implementation based on cardmagic/classifier.*

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'classiphier'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install classiphier

## Usage

```ruby
require 'classiphier'

classifier = Classiphier::Bayes.new
classifier.train :positive, 'This is a great tweet. I like it!'
classifier.train :positive, 'With great power comes great responsibility'
classifier.train :negative, 'This tweet is not good. I hate it!'
classifier.train :negative, 'Here are some bad words, I hate you'

classifier.classify 'I like these tweets' # => :positive
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alejandrodevs/classiphier. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Classiphier project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/alejandrodevs/classiphier/blob/master/CODE_OF_CONDUCT.md).
