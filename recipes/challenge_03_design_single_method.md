# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user  
> So that I can keep track of my tasks  
> I want to check if a text includes the string `#TODO`.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._



```ruby

check_for_todo(text) => boolean

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

# throw an error if the text is empty 
check_for_todo("") => error

# should return false when text contains no matching chars for target string 
check_for_todo("asfhjlk!") => false

# should return false if the target string is interrupted by whitespace

check_for_todo("#TO DO") => false

# returns false if the text contains the string but in lowercase

check_for_todo("#todo") => false 
check_for_todo("#tOdo") => false 

# returns false when the string is interrupted by other chars

check_for_todo("#TOsometexthereDO") => false 
check_for_todo("# sometexthere TODO") => false 

# returns true if text contains the string and it's preceded by whitespace

check_for_todo(" #TODO") => true 

# should return true when string is preceded by non whitespace char

check_for_todo("some text#TODO") => true

# should return true when target string is followed by non whitespace char 

check_for_todo("#TODO!") => true 

# returns true with multiple matching strings 
check_for_todo("#TODO #TODO") => true 






```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._