module Classiphier
  class Bayes
    def initialize
      @data = Data.new
    end

    def train(category, sentence)
      @data.perform!
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
            score[category] += Math.log(value / data[:words])
          end

          value = @data[:data][category][:count].to_f
          score[category] += Math.log(value / @data[:count])
        end
      end
    end
  end
end
