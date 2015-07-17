require 'test_helper'

class ClassiphierBayesTest < Minitest::Test
  def setup
    @classifier = Classiphier::Bayes.new
    @classifier.train :positive, 'This is a great tweet. I like it!'
    @classifier.train :positive, 'With great power comes great responsibility'
    @classifier.train :negative, 'This tweet is not good. I hate it!'
    @classifier.train :negative, 'Here are some bad words, I hate you'
  end

  def test_classify
    assert_equal :positive, @classifier.classify('I like these tweets')
  end
end
