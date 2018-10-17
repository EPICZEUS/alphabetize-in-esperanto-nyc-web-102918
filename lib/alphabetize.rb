ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  ret = 0
  
  out = arr.sort do |a, b|
    i = 0
    while i < a.length && i < b.length
      ret = ESPERANTO_ALPHABET.index(a[i]) <=> ESPERANTO_ALPHABET.index(b[i])
      
      break unless i == 0
      
      i += 1
    end
    
    if a.length != b.length && ret == 0
      ret = a.length <=> b.length
    end
    
    ret
  end
  
  out
end