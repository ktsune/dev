require 'minitest/pride'

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def phrase
    @phrase
  end

  def word_count
    words = @phrase.downcase.split(/[^'\w]+/).map { |w| w.chomp("'").reverse.chomp("'").reverse  }
    #Hash[words.map { |word|  [word, words.select{ |w| w == word }.length] }]

    output = {}
    words.each do |word|
      if word.empty?
        next
      end

      number_of_occurences = 0

      words.each do |w|
        if w == word
          number_of_occurences += 1
        end
      end

      output[word] = number_of_occurences
    end
    output

  end
end
