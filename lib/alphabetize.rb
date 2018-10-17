if a.length != b.length && ret == 0
    ret = a.length <=> b.length
  end
  
  ret

def alphabetize(arr)
  ret = 0
  
  arr.sort_by do |a, b|
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
end