# Aseessment Notes

## Some Array methods

...

### Inject

This method, takes a number, along with another, and makes a binary operation onto it. For example:

`(1..10).inject {|sum,n| sum + n } => 55`

This iterates 10 times, each time n represents the number (1-10).  This number gets added to sum, hence sum is the number that gets added to.

### Inject over arrays

You can now inject numbers into an array

`(1..10).inject([]) {|arr,n| arr << n}` =>  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

Again, this is a useful means of inject. Arr here represents the element (in this case an empty array) that gets acted upon. The n represents the numbers (1-10) that are iterated through. Once an iteration happens, n is appended to arr.

## Passy by Reference vs Pass by Value

Integers are immutable, so when you use another integer, it creates a new one. E.G

`a = 7`
`b = 7`

`a = 9`
`# b => 7`

Here the integers are immutable so when you make a = 9, you assign a to a new place in memory and now b holds the same place.

However it is different for arrays and mutable objects. E.G

a = `%w(Harry loves cake)`
`b = a`

`a.pop => [Harry,loves]`
`p b # => [Harry,loves]`

Here a and be is the same because when you perform something on the a object it does not reassign but arrays are mutable so they can be changed. 


## Variable Scope

Scope is the area where variables can be used. This is determined by where the variable is created or initialized.

One main rule to remember is that the inner scope can access the outer scope, but the outer scope cannot access the inner scope.

```ruby
name = 'michael'

loop do
  puts name
  break
end

# => michael

```

Here the variable was initialized outside of the scope so you can access it from inside.

```ruby
a = 5

loop do
  a = 7
  b = 9
  break
end

puts b
puts a

# => for the a we can output 7
# => here we get an undefined local variable or method

```

Here is an error because inside of the block b was initialized but it was accessed outside of the block.



This is an important concept to understand. When you initialize a variable it is accessible to the scope you initialize it.

```ruby
`str = 'hello'`

    loop do
      str = 'world'
      break
    end

    puts str
    'world'
```

Here the answer will be `world`. This is because the str was initialized on the outer scope so it is accessible on the inner scope. However, if you this the other way around:

```ruby
    loop do
      str = world
      break
    end
```

`puts str`
`undefined local variable or method `str' for main:Object (NameError)`

Here you would get an error because you are trying to access a variable that was initialized on an inner scope.

Inside methods, you also cannot call local variables outside of them.

```ruby
name = 'michael'

def display_name(word)
  puts name
end
```

    undefined local variable or method name for main:Object (NameError)

However, you must use the variable that is passed into the argument.


```ruby
name = 'michael'

def display_name(word)
  puts word
end

p display_name(name)

'michael'
```


This works because you pass in the variable.

```ruby
a = 5

def some_method()
  a = 4
end

puts a

# => 5

```

Here you get 5 because methods create their own scope.










