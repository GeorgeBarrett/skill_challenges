# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface



_Include the initializer and public methods with all parameters and return values._

```ruby
def initialiser
@track_list = []
end

def add(track) #track is a string
  #populate array
  #return nothing 
end

def list
  #returns list 
end

```

## 3. Create Examples as Tests

 
_Make a list of examples of how the class will behave in different situations._

```ruby

track_list = TrackList.new()

track_list.list # => track_list = []

track_list.list # => if list is empty then a fail message will be thrown

track_list = TrackList.new()
track_list.add("Poliwhirl")
track_list.list # => ["Poliwhirl"]

track_list = TrackList.new()
track_list.add("Vicarious")
track_list.add("Jambi")
track_list.list # => ["Vicarious", "Jambi"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._