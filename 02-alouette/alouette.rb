class Alouette

  attr_accessor :lyrics


  @@lines = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]


  def self.verse_lines(index)

    return @@lines[0..index].reverse
  end


  def self.verse(index)

    verse = []

    lyric = verse_lines(index)[0].split(' ')[1..-1].join(' ').chomp("!")

    verse_lines(index).each  do |line|
      verse << "#{line}"
      verse << "#{line}"
    end

    verse.unshift("Je te plumerai #{lyric}.")
    verse.unshift("Je te plumerai #{lyric}.") #* 2

    ["Alouette!", "Alouette!", "A-a-a-ah"].each do |line|
      verse << "#{line}"

    end

    return verse.join("\n")
  end


  def self.sing

    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    song = ""

    7.times do |i|
      song << refrain + "\n\n"
      song << verse(i) + "\n\n"
    end

    song << refrain

    return song.join
  end

end
