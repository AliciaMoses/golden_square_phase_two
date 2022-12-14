# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicHistory
  def initialize() # name is a string
    # ...
  end

  def add(track) # task is a string
    # No return value
  end

  def player_history()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
  def view_player_history()
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
user = PlayerHistory("user")
user.add(track)
user.view_playlist() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

