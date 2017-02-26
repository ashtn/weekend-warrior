class Alouette

  attr_accessor :lyrics

  @@lyrics = [ "Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!" ]

  # def  initialize
  #
  #
  # end

  def self.verse_lines(index)

    @@lyrics[index..7]

  end

  def self.verse(index)

    lyric = verse_lines(index)[0].split(' ')[1..-1].join(' ').chomp("!")

    verse = []
    beginning = "Je te plumerai #{lyric}."
    finish = ["Alouette!", "Alouette!", "A-a-a-ah"]

    verse_lines(index).each  do |line|
      verse << "#{line}"
      verse << "#{line}"
    end

    verse.unshift(begining)
    verse.unshift(begining) #* 2

    finish.each do |line|
      verse << "#{line}"
    end

    return verse.join("\n")

  end

  def sing
  end


end

# #puts Alouette.verse(0).class
# puts Alouette.verse(7)
# # puts
# # lines = Alouette.verse(3).split("\n")
# # puts lines
#
lines = Alouette.verse(7).split("\n")

#If there aren't at least 2 lines, don't continue
puts lines.class
puts lines.length
puts lines


#
# 2.times do |i|
#   lines[i].start_with?('Je te plumerai')
# end
#
# lines = Alouette.verse(3).split("\n")
#
# # If there aren't at least 3 lines, don't continue
# puts lines.length >  2
# puts lines.length
# puts lines[-3] == "Alouette!"
# puts lines[-3]
# puts lines[-2] == "Alouette!"
# puts lines[-2]
# puts lines[-1] == "A-a-a-ah"
# puts lines[-1]
# puts lines
