# Music Manager Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby

class MusicManager
  def initialize # initialise the class with an instance variable with an empty hash
    @music_history = Hash.new() # => {}
    
  end

  def add(artist, song_title) # takes strings as input, populates hash
    track = [artist] song title
    @music_history << track 
  end

  def show_history()
    return @music_history
    # Prompt if no history 
    # Otherwise, returns a list of tracks 
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
#  test initialiser 

#  test add 
#  error if nothing added 

#  test show history 

#  no history 
shows 



library_one = MusicManager.new()
library_one.
library_one.() # => 

# 2
library_one = MusicManager.new()
library_one. # fails with 


# 3
library_one = MusicManager.new()

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


