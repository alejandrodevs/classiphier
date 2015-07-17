module Classiphier
  class Data < Hash
    def initialize
      self[:size] = 0
      self[:data] = {}
    end

    def train(sentence)
      sentence.words.each do |word|
        self[:data][word] ||= 0
        self[:data][word]  += 1
        self[:size] += 1
      end
    end
  end
end
