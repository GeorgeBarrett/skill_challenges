# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface



_Include the initializer and public methods with all parameters and return values._

```ruby
def initialiser
@todo_list = []
end

def add(todo) #todo is a string
  #populate array 
end

def list
  return list
end

def mark_complete(completed_task) #completed_task is a string
 #user will enter a todo that they have done and this will then disappear from the @todo_list array
end
```

## 3. Create Examples as Tests

 
_Make a list of examples of how the class will behave in different situations._

```ruby

@todo_list = ToDo.new() => populating an array of todo items

@todo_list = ToDo.new()
@todo_list.add("") => "Please enter a todo item." => throws an error
@todo_list.add("Get clothes") => add this to array
@todo_list.mark_complete("Get clothes") => remove this from array
@todo_list.mark_complete("Buy a horse") => throws error as this does not exist
@todo_list.list => lists all items in the array


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._



