class Genre
    attr_accessor :name, :artist, :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all do |song|
            song.genre == self
        end
    end
    def artists

    end
end
