require 'awesome_print'
class Xmas


  def self.gifts(day)
    gifts = [
      "a partridge in a pear tree",
      "two turtle doves",
      "three french hens",
      "four calling birds",
      "FIVE GOLDEN RINGS",
      "six geese-a-laying",
      "seven swans-a-swimming",
      "eight maids-a-milking",
      "nine ladies dancing",
      "ten lords-a-leaping",
      "eleven pipers piping",
      "twelve drummers drumming"
    ]

    day_count = day
    lyrics = []
    until day_count < 0
        lyrics << gifts[day_count]
        day_count -= 1
    end
    if day > 0
      lyrics[lyrics.length - 1] = "and " + lyrics[lyrics.length - 1].chomp # get rid of line break on last line
    end
    return lyrics
  end

  def self.verse(day)
    song_verse = "On the #{ordinal(day)} day of Christmas my true love gave to me\n"
      song_verse = song_verse + "#{self.gifts(day).join("\n")}"
    return song_verse
  end

  def self.ordinal(day)
    ordinals = %w(first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth)
    ordinals[day]
  end

  def self.sing
    song = []
    (0..11).each do |i|
      song << self.verse(i)
    end
    return song.join("\n\n")
  end


end

print Xmas.sing
