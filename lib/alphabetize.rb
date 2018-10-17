ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  ret = 0
  
  out = arr.sort_by do |word|
    arr = []
    word.each_char do |l|
      arr << ESPERANTO_ALPHABET.index(l)
    end
    arr
  end
  
  out
end