def greatest_symbol(text)
  symbols = [] # array for unique symbols in text and their weight [[symbol, weight], ...]
  text.each_char { |c| symbols.append [c, nil] unless symbols.include?([c, nil]) }
  0.upto(symbols.length-1) do |i|
    s = symbols[i][0]
    symbols[i][1] = text.rindex(s) - text.index(s)
  end
  gr_numb = symbols.max { |a, b| a[1] <=> b[1]}[1] # the biggest weight number
  gr_symbs = [] # array for symbols that have the biggest weight
  symbols.each do |s|
    gr_symbs.append s[0] if s[1] == gr_numb
  end
  return gr_symbs.sort![0] # return symbol that goes first in alphabet
end
