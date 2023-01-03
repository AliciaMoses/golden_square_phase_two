class MusicManager
    
    def initialize
        @music_history = []
    end 

    def add_track(song_title, artist)
      track = { artist => song_title }
      @music_history << track
    end 

    def show_history 
        @music_history.each { |i| p i }
    end 

end 
