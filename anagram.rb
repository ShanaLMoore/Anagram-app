require_relative 'reverse_letters'

def find_anagram(letters)
  #split up the word to have individual letters
  letters = letters.split("")
  #create an empty array for the words
  anagram = []
  #run a loop to select a letter
  letters.each_with_index do |letter, index|
  remaining_letters = letters.select {|i| i != letter}
  #append it to the array
  anagram << letter + remaining_letters.join
  #rerun 2-letter anagram method to append the remaining letters
  anagram << letter + reverse_letters(remaining_letters).join
  end
    anagram
end