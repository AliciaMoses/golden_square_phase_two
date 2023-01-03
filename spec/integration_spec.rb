require "music_library"
require "track"

RSpec.describe "integration" do 
    context "when we add track to the library" do 
        it "it comes back in the list" do 
            music_library = MusicLibrary.new
            track = Track.new("my_title", "my_artist")
            track_2 = Track.new("my_title_2", "my_artist_2")
            track_3 = Track.new("my_title_3", "my_artist_3")
            music_library.add(track)
            music_library.add(track_2)
            music_library.add(track_3)
            expect(music_library.all).to eq [track, track_2, track_3]
        end 
    end 
    context "when searching for a title of a track that has been added" do 
        it "returns the tracks with the corresponding title" do 
            music_library = MusicLibrary.new
            track = Track.new("my_title", "my_artist")
            track_2 = Track.new("my_title_2", "my_artist_2")
            track_3 = Track.new("my_title_3", "my_artist_3")
            music_library.add(track)
            music_library.add(track_2)
            music_library.add(track_3)
            result = music_library.search_by_title("my_title_2")
            expect(result).to eq [track_2]
        end 
        it "returns the tracks with the corresponding substring" do 
            music_library = MusicLibrary.new
            track = Track.new("my_title", "my_artist")
            track_2 = Track.new("my_title_2", "my_artist_2")
            track_3 = Track.new("my_title_3", "my_artist_3")
            music_library.add(track)
            music_library.add(track_2)
            music_library.add(track_3)
            result = music_library.search_by_title("title_2")
            expect(result).to eq [track_2]
        end 
    end 
    context "searching for  a substring that doesn't match an existing track" do
        it "yields an empty list" do 
            music_library = MusicLibrary.new
            track = Track.new("my_title", "my_artist")
            music_library.add(track)
            result = music_library.search_by_title("song")
            expect(result).to eq []
        end
    end
end