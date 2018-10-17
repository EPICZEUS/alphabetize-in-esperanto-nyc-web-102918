def alphabetize(arr)
  ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ret = 0
  
  arr.sort_by do |a, b|
    i = 0
    while i < a.length && i < b.length
      ret = ESPERANTO_ALPHABET.index(a[i]) <=> ESPERANTO_ALPHABET.index(b[i])
      
      break unless i == 0
      
      i += 1
    end
  end
end