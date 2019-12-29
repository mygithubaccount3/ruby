class Phrase
  attr_reader :str

  def initialize(str)
    @str = str.downcase
  end

  def word_count
    counted_words = Hash.new(0)
    str.split(/[^a-zA-Z0-9']|(?<=\s)'|'(?=\s)/).reject(&:empty?)
       .each {|e| counted_words[e] += 1}
    return counted_words
  end
end
