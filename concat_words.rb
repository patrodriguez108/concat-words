# find all possible concats of words
# check s for inclusion of concats
# find starting indices of concats

def find_substring(s, words)
	indices = []
	joins = []
  joins << words.join
  joins << words.reverse.join
  
  joins.each { |concat| indices << s.index(concat) if s.include?(concat) }
  indices
end

s = "barfoothefoobarman"
words = ["foo", "bar"]

find_substring(s, words)

str = "barfoofoobarthefoobarman"
palabras = ["bar","foo","the"]

p find_substring(str, palabras)