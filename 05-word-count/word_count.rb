def words(phrase)
  words_hash = Hash.new(0)
  sanitize(phrase).split(/ /).each do |word|
    words_hash[word] += 1
  end
  words_hash
end

def sanitize(phrase)
  phrase.gsub(/[\n\t\s+]+/, ' ').gsub(/\A\s/, '')
end
