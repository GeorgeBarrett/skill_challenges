## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby
todo_checker = todo(text)

text = a given string (e.g. "Like this string here")
todo_checker: checks if string includes `#TODO` 
```
_Include the name of the method, its parameters, return value, and side effects._

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

todo_checker("#TODO") => true
todo_checker("#todo") => false
todo_checker("#ToDo") => false
todo_checker("#todo get some clothes from bristol") => false
todo_checker("#TODO get some clothes from bristol") => true
todo_checker(666) throws an error
todo_checker("") throws an error

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
