class Alouette

  attr_accessor :lyrics

  def  initialize

    @@lyrics = [ "Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!" ]

  end

  def self.verse_lines(index)

    return @@lyrics[index..7]

  end

  def self.verse(index)

    lyric = @@lyrics[index].chomp("!")
    lyric = lyric.split(' ')[1..-1].join(' ')



    puts "Je te plumerai #{lyric}. \n" * 2

    verse = verse_lines(index)

    verse.each do | line |
      puts "#{line}\n" * 2
    end
    puts "Alouette!\n" * 2
    puts "A-a-a-ah"

  end

  def sing
  end


end

#  n = Alouette.new
# #
# puts n.verse(7)
