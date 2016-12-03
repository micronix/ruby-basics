## Interactive Ruby

```bash
# terminal
# starts interactive ruby shell
irb

# you can type any ruby code in here
irb(main):001:0> 1 + 1
=> 2
irb(main):002:0>

# you can type multiline code
# write a method
irb(main):002:0> def my_method
irb(main):003:1> puts "hello"
irb(main):004:1> end
=> :my_method
irb(main):005:0> my_method
hello
=> nil
irb(main):006:0>

# stop irb
irb(main):001:0> exit
irb(main):001:0> exit()
irb(main):001:0> quit
irb(main):001:0> quit()
```

## Executing Ruby Files

```bash
# terminal
# format
ruby <FILENAME> <ARGUMENT> <ARGUMENT>...

# example
ruby my_program.rb
ruby my_program.rb my_file.txt
ruby my_program.rb 1st_argument 2nd_argument
```

## Input/Output

Get input from the user from terminal

```ruby
gets
```

Display information in the terminal

```ruby
print # shows information
puts # shows information and newline
p # shows information, newline, and returns what it printed
```

## Classes

Most common classes

```ruby
BasicObject
  Object
    Numeric
      Float
      Integer
        Fixnum
    String
    Array
    TrueClass
    FalseClass
    NilClass
    Hash
    Symbol
    Regexp
    Range
```

## Variables

Anything can be stored in a variable. The variable just needs a valid variable name.

- Valid variable names must start with a letter
- Variables cannot contain spaces
- Variables can contain numbers
- Methods can end with one of these symbols: `? ! =`
- Name identifier in English

```ruby
# bad - identifier using non-ascii characters
заплата = 1000

# bad - identifier is a Bulgarian word, written with Latin letters (instead of Cyrillic)
zaplata = 1000

# good
salary = 1000
```
- Use `snake_case` for symbols, methods, and variables.

```ruby
# bad
:'some symbol'
:SomeSymbol
:someSymbol

someVar = 5

def someMethod
  # some code
end

def SomeMethod
  # some code
end

# good
:some_symbol

some_var = 5

def some_method
  # some code
end
```

Parallel assignment

```ruby
# 3 single assignments
a = 10
b = 20
c = 30

# parallel assignment
a, b, c = 10, 20, 30
a, b, c = [10, 20, 30]
```

## Integers

How to write

```ruby
1
100
100000
100_000_000
1_0_0_0_0_0
```

Common Methods

```ruby
3.+(num) # add
3.-(num) # subtract
3.*(num) # multiply
3./(num) # divide
3.%(num) # remainder
3.**(num) # exponent
```

Usage
```ruby
# 3 plus 2
3.+(2)
3 + 2

# 3 minus 2
3.-(2)
3 - 2

# 3 times 2
3.*(2)
3 * 2

# 3 divided by 2
3./(2)
3 / 2

# remainder of 3 divided by 2
3.%(2)
3 % 2

# 3 raised to the 2nd power
3.**(2)
3 ** 2
```

Notice how the parentheses (`()`) are optional.
The period (`.`) is also optional, but only for the `+, -, *, /, %` methods.

## Assignment

We use assignment operators to give variables values

|Operator|Description|Examples|
|--------|-----------|--------|
| =      | Simple assignment. Assigns values from right side operands to left side operand | a = 1 + 1 will assign a to 2 |
| +=     | Adds right operand to the left operand and assign the result to left | a += 2<br>a = a + 2 |
| -=     | Subtracts right operand from the left operand and assign the result to left operand | a -= 2br>a = a - 2< |
| *=     | Multiplies right operand with the left operand and assign the result to left operand | a \*= 2<br>a = a * 2 |
| /=     | Divides left operand with the right operand and assign the result to left operand | a /= 2<br>a = a / 2 |
| %=     | Takes modulus using two operands and assign the result to left operand | a %= 2<br>a = a % 2 |
| **=    | Performs exponential (power) calculation on operators and assign value to the left operand | a \*\*= 2<br>a = a ** 2 |

## Strings

Most strings start and end with quotes

```ruby
"hello" # allows string interpolation
'hello' # no string interpolation
```

You can also make strings like this

```ruby
%(hello) # allows string interpolation
%Q(hello) # allows string interpolation
%q(hello) # no string interpolation
```

Common string methods

```ruby
"a" + other_string
"a" * number
"a".length
"a".upcase
"a".downcase
```

Adding two strings is called *concatenation*.

Prefer string interpolation and string formatting instead of string concatenation

```ruby
# bad
email_with_name = user.name + ' <' + user.email + '>'

# good
email_with_name = "#{user.name} <#{user.email}>"

# good
email_with_name = format('%s <%s>', user.name, user.email)
```

Prefer single-quoted strings when you don't need string interpolation or special symbols such as \t, \n, ', etc.

```ruby
# bad
name = "Bozhidar"

# good
name = 'Bozhidar'
```
Don't leave out `{}` around instance and global variables being interpolated into a string.

```ruby
# bad - valid, but awkward
"#@first_name #@last_name"

# good
"#{@first_name} #{@last_name}"
```

Don't use `Object#to_s` on interpolated objects. It's invoked on them automatically.

```ruby
# bad
message = "This is the #{result.to_s}."

# good
message = "This is the #{result}."
```

## Ranges

Use `..` or `...` to create ranges

|Operator|Description|Example|
|--------|-----------|-------|
| ..     | Creates a range from start point to end point inclusive | 1..10 Creates a range from 1 to 10 inclusive |
| ...    | Creates a range from start point to end point exclusive | 1...10 Creates a range from 1 to 9 |

In order to call methods on ranges you must use parentheses.

```ruby
# bad
1..9.max

# good
(1..9).max
```

Parentheses aren't needed if the range is in a variable

```ruby
a = 1..10

# unnecessary
(a).max

# good
a.max
```

## Booleans

`true` and `false` are special words. They are known as booleans.

```ruby
true
false
```

## `nil`

There is a value that represents nothing. That value in ruby is called `nil`. It is not zero. It is not false. It is not an integer. It is not part of the `FalseClass` class. It has it's own class `NilClass` and it represents nothing.

## Logic

We reduce multiple booleans into one result by using logical operators

|Operator|Symbol|Description|
|--------|------|-----------|
| and    | &&   | needs both sides to be true in order for the expression to be true |
| or     | ||   | needs at least 1 side of the expression to be true in order for the whole expression to be true |
| xor    | ^    | needs exactly 1 side of the expression to be true in order for the whole expression to be true |
| not    | !    | reverses the value of the boolean |


```ruby
true and true
true or true
true ^ true
not true
```

## Comparisons

We compare one value to another and get a boolean (`true` or `false`) or integer in return

|Operator|Description|Example|
|--------|-----------|-------|
| ==     | Returns true if both values are equal to each other | 1 == 2 is false |
| !=     | Returns true if the values do not equal each other | 1 != 2 is true |
| >      | Returns true if the left side is greater than the right side | 1 > 2 is false |
| <      | Returns true if the left value is less than the right value | 1 < 2 is true |
| >=     | Returns true if the left operand is greater than or equal to the right operand  | 1 >= 2 is false |
| <=     | Returns true if the left side is less than or equal to the right side | 1 <= 2 is true |
| <=>    | Returns -1 if left is less than right. Returns 0 if left equals right. Returns 1 if left is greater than right. | 1 <=> 2 is -1 |
| ===    | Returns true if left side includes right side.  | 1 === 2 is false<br>(1..10) === 2 is true<br>Integer === 2 is true<br>2 === Integer is false<br>Float === 2 is false |
| .eql?  | Returns true if both sides have the same value and class. Strict equality | 1 == 1.0 returns true<br>1.eql? 1.0 is false |
| .equal?| Returns true if both sides of the value are the same ruby Object. Super strict equality | 1.equal?(1) is true<br>"a".equal?("a") is false because every time a string is created, a new string object is created in memory. It does not matter if there is already a strong with those exact characters |

## Control Flow

Now that we know about booleans, we can use them to run certain code if true, and other code if false.

### `if` Statement

Execute code only when a certain condition is true

```ruby
# format
if condition then
  # code block
end

# Example
if true
  puts "Honesty is the best policy"
end
```

If `condition` is `true`, the code inside that block will get executed. If `condition` is `false`. No code will get executed

Note that the `then` keyword is optional. `then` is required in other programming languages. The `end` keyword is required.

### `if` modifier

The if statement can be simplified into 1 line of code like so

```ruby
puts "Honesty is the best policy" if true
```

### `if-else` Statement

Choose which code gets executed based on one condition

```ruby
# format
if condition then
  # 1st code block
else
  # 2nd code block
end

# example
if 2 == 3
  puts "the condition was true"
else
  puts "the condition was false"
end
```

### Ternary Operator

Shorthand for the if-else statement

```ruby
# format
condition ? true_block : false_block

# example
2 == 3 ? puts("the condition was true") : puts("the condition was false")
```

This time, if the `condition` above is `false`, the 2nd code block will get executed.

Note that `else` does not require a condition.

### `if-elsif` Statement

Control code that gets executed based on multiple conditions

```ruby
if first_condition
  # code to run if this condition is true
elsif second_condition
  # code block for second_condition
end
```

You can have as many conditions as you want in your if-elsif statement and combine it with an else statement as well.

```ruby
# if-elsif-else format
if first_condition
  # code
elsif second_condition
  # code
elsif third_condition
  # code
else
  # code
end
```

### `case` Statement

Similar to really long if statements but uses threequals (`===`) to compare `case` value against other values

```ruby
# case format
case variable
  # code
when value_1
  # code
when value_2
  # code
when value_3
  # code
else
  # code
end

# examples

number = 4

# prints "number was neither 1, 2 or 3"
case number
when 1 # compares 1 === 4 and gets false
  puts "number was 1"
when 2 # compares 2 === 4 and gets false
  puts "number was 2"
when 3 # compares 3 === 4 and gets false
  puts "number was 3"
else # since all previous values returns false, we execute this code
  puts "number was neither 1, 2 or 3"
end

# prints "number was between 1 and 10"
case number
when 1..10 # evaluates (1..10) === 4 and gets true. Executes code block below.
  puts "number was between 1 and 10"
when 11..20
  puts "number was between 11 and 20"
when 21..30
  puts "number was between 21 and 30"
else
  puts "number was not between 1 and 30"
end

# prints "variable is an integer"
case number
when String # String === 4 is false
  puts "variable is a string"
when Float # Float === 4 is false
  puts "variable is a decimal"
when Fixnum # Fixnum === 4 is true. Executes code below.
  puts "variable is an integer"
else
  puts "variable is neither a string, decimal or integer"
end
```

## Truthy vs Falsy

The conditions in `if` statements do not need to be exactly `true` or `false`. We can place **anything** inside if statement conditions, not just booleans.

The statement's code block will execute if the condition is truthy and will not execute if its condition is falsy.

Everything besides `false` and `nil` are truthy. Only `false` and `nil` are falsy.

```ruby
if false
  # this code does not run because false is falsy
elsif nil
  # this code does not run because nil is falsy
elsif "qwerty"
  # this code runs because everything is truthy except nil and false
else
  # this code does not execute because the condition above was truthy
end
```

## Arrays

An array is used to hold a collection of items/elements. An item can be any object: symbols, string, number, boolean, array, hash. All hashes begin and end with square brackets `[]`. The items are separated by commas

```ruby
# format
[item_1, item_2, item_3...]

# Examples
[]
[1,1,1,84]
[nil, true, "pizza"]
[["a", "b", "c"], [1, 2, 3], [:a, :b, :c]]
```
Arrays are just ordered lists. Use an index number to access a number in an array.

```ruby
["monday", "tuesday", "wednesday"][0] # is "monday"
["monday", "tuesday", "wednesday"][1] # is "tuesday"
["monday", "tuesday", "wednesday"][2] # is "wednesday"
["monday", "tuesday", "wednesday"][-1] # is "wednesday"
```

Array common methods

```ruby
.first
.last
.length
.push
.pop
.shift
.unshift
.flatten
.join
.uniq
.uniq!
.sample
.each
.each_index
.each_with_index
.map
.map!
```

`.each`

```ruby
# format
array.each do |item|
  # code
end

# example
strings = ["one", "two", "three", "four", "five"]
strings.each do |word|
  print word
end

onetwothreefourfive
```

## Hashes

```ruby
# format
{ key_1 => value_1, key_2 => value_2, key_3 => value_3...}

# example
{}
{1 => "uno", "two" => "dos", :three => "tres", four: "quatro" }
{ 1..9 => "range", true => [1,2,3], false => { "key" => "value" } }
```

## Methods

To reduce code repetition and improve readability you can define your own methods. They will store your code/logic and execute it when called.

```ruby
def method_name # define what your function does
  # code
end

method_name # execute your function
method_name() # execute your function
```

Parameters

Methods get their own local variables. To pass outside information inside of the method use parameters

```ruby
def method_name(parameter_1, argument_2, third_argument)
  # code
end

method_name(1, true, "pass the method some outside information like this string")
```

Default values

Give parameters default values if no data was passed into method

```ruby
def method_name(parameter_1 = "default value", parameter_2 = false)
  # code
end

method_name
```

Keyword argument

Use keyword arguments for increased readability and clarity about your parameters

```ruby
def method_name(parameter_1:, parameter_2: "with defualt value")
  # code
end

method(parameter_2: "yeet", parameter_1: 10) # keyword arguments can be given in any order
```

Splat operator

Use splat operators to receive many parameters and store them into an array

```ruby
def method_name(*parameter_5)
  # code
end

method_name
method_name(7)
method_name(9, false)
method_name(true, ["hello", "there"], :my_symbol)
method_name({ key: "value" }, (10..1), nil, 3.2)
```

Combine any/all parameters types

```ruby
def method_name(parameter_1, parameter_2 = "defualt value", *parameter_3, parameter_4: "with default value", parameter_5:)
  # code
  puts "parameter_1 is #{parameter_1}"
  puts "parameter_2 is #{parameter_2}"
  puts "parameter_3 is #{parameter_3}"
  puts "parameter_4 is #{parameter_4}"
  puts "parameter_5 is #{parameter_5}"
end

method_name("param_1 value", 2, 1, 22, 94, -11, 7, 4.5, false, 0, parameter_5: nil, parameter_4: 3.2)

# parameter_1 is "param_1 value"
# parameter_2 is 2
# parameter_3 is [1, 22, 94, -11, 7, 4.5, false, 0]
# parameter_4 is nil
# parameter_5 is 3.2
```

## Instance Variables

When you assign a regular variable, it is a local variable. It is only available in the method it was created. No other methods have access to that information unless you pass them as to the method as parameters.

There are ways to for methods to share variables. Variables starting with `$` are global, variables with `@` are instance variables, `@@` means class variables, and names starting with a capital letter are constants. All other variables are locals. When you open a class or method, that's a new scope, and locals available in the previous scope aren't available.

```ruby
# does not work
my_variable = 2

def my_method
  my_variable
end

puts my_method

# works
@my_variable = 2

def my_method
  @my_variable
end

puts my_method
```

## Classes

Classes define a new data type and have their own set of methods.

Add new methods to pre-existing classes

```ruby
class String
  def my_monkey_patch
    "I have hacked into the String class!"
  end
end

"a".my_monkey_patch
```

Overwrite pre-existing methods to pre-existing classes

```ruby
class String
  def length
    "I have hacked a pre-existing method in the String class!"
  end
end

"a".length
```

Use the object you called the method on in your method

```ruby
class String
  def my_monkey_patch
    self.reverse.upcase
  end
end

# self is actually assumed and can be left out
class String
  def my_monkey_patch
    reverse.upcase
  end
end
```

Make your own classes/data types. Then you can access/update that object's data through methods.

```ruby
class Album
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

album = Album.new "Thriller"
album.name
album.name = "Bad"
```
---
Additional Resources
- [Difference between `&&` and `and`](http://stackoverflow.com/questions/1426826/difference-between-and-and-in-ruby).
- [All Ruby operators](https://www.tutorialspoint.com/ruby/ruby_operators.htm)
