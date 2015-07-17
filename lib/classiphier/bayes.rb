module Classiphier
  class Bayes
    def initialize
      @data = Data.new
    end

    def train(category, sentence)
      @data[:size] += 1
      @data[:data][category] ||= Data.new
      @data[:data][category].train(sentence)
    end

    def classify(sentence)
      classifications(sentence).min_by { |a| -a[1] }[0]
    end

    def classifications(sentence)
      Hash.new(0).tap do |score|
        @data[:data].each do |category, data|
          sentence.words.each do |word|
            value = data[:data].fetch(word, 0.1).to_f
            score[category] += Math.log(value / data[:size])
          end

          value = @data[:data][category][:size].to_f
          score[category] += Math.log(value / @data[:size])
        end
      end
    end
  end
end
