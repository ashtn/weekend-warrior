class Alouette

  attr_accessor :lyrics


  @@lines = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]


  def self.verse_lines(index)

    @@lines[0..index].reverse

  end

  def self.refrain
    "\n\nAlouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
  end

  def self.verse(index)

    lyric = verse_lines(index)[0].split(' ')[1..-1].join(' ').chomp("!")

    verse = []

    verse_lines(index).each  do |line|
      verse << "#{line}"
      verse << "#{line}"
    end

    verse.unshift("Je te plumerai #{lyric}.")
    verse.unshift("Je te plumerai #{lyric}.") #* 2
    # verse_array.unshift("Je te plumerai #{lyric}.")
    ["Alouette!", "Alouette!", "A-a-a-ah"].each do |line|
      verse << "#{line}"
    end



    return verse.join("\n")

  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

song = []

 7.times do |i|
   song << refrain + "\n\n"
   song << verse(i) + "\n\n"
 end

 song << refrain + "\n\n"







    # song = "#{ refrain }#{ verse(0) }#{ refrain }#{ verse(1) }#{ refrain }#{ verse(2) }  #{ refrain }#{ verse(3) }#{ refrain }#{ verse(4) }#{ refrain }#{ verse(5) }#{ refrain }#{ verse(6) }#{ refrain }#{ verse(7) }#{ refrain }"

    # song = refrain + verse(0) + refrain + verse(1) + refrain + verse(2) + refrain + verse(3) + refrain + verse(4) + refrain + verse(5) + refrain + verse(6) + refrain

        # song = refrain + "\n\n" + verse(0) + "\n\n" + refrain + "\n\n" + verse(1) + "\n\n" + refrain + "\n\n" + verse(2) + "\n\n" + refrain + "\n\n" + verse(3) + "\n\n" + refrain + "\n\n" + verse(4) + "\n\n" + refrain + "\n\n" + verse(5) + "\n\n" + refrain + "\n\n" + verse(6) + "\n\n" + refrain


    return song.join("")

  end


end

# #puts Alouette.verse(0).class
# puts Alouette.verse(7)
# # puts
# # lines = Alouette.verse(3).split("\n")
# # puts lines
# #
# lines = Alouette.verse(7).split("\n")
#
# #If there aren't at least 2 lines, don't continue
# puts lines.class
# puts lines.length
# puts lines


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
print Alouette.sing
