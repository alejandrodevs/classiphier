module Classiphier
  class Data < Hash
    def initialize
      self[:data]  = {}
      self.default = 0
    end

    def train(sentence)
      perform!
      sentence.words.each do |word|
        self[:data][word] ||= 0
        self[:data][word] += 1
        self[:words] += 1
      end
    end

    def perform!
      self[:count] += 1
    end
  end
end
