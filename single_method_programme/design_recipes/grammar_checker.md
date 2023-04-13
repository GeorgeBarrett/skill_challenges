## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
punctuation = grammar_checker(text)

text = a given string (e.g. "like this string here")
punctuated: ensures the string starts with a capital and ends with a full stop
```
_Include the name of the method, its parameters, return value, and side effects._

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

grammar_checker("This is a sentence.") => true
grammar_checker("word") => false
grammar_checker(nil) => throws an error
grammar_checker(666) => false
grammar_checker("") => false
grammar_checker(true) => false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
