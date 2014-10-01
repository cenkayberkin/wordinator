class Worder < ActiveRecord::Base
  def anagram?(word1, word2)
    turn_to_hash(word1) == turn_to_hash(word2)
  end

  def turn_to_hash(word)
    word_hash = Hash.new(0)
    word.split('').each do |l|
       word_hash[l] += 1
    end
    word_hash
  end
end
