# Reading Time Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_time = calculate_reading_time(text)

# the text is a string comprised of words 
# the reading time will be an int representing minutes 

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
calculate_reading_time("") => error 


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


