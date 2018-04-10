# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# Here we are creating an object of the Proc class and having my_proc point to
# it. There are lenient arity rules for the Proc object demonstrated here by the
# fact that no exception is raised when either too few or too many arguments
# are passed to the block.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# Here we are creating lambda objects of the Proc class and having my_lambda
# and my_second_lambda point to them. Lambdas have stricter arity rules and
# must have the correct number passed into them. Lambdas are not derived from
# thier own class. Rather, they belong to the Proc class.

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# Here a method is defined which requires that a block is passed in as an argument.
# On the first method invocation, the block is expecting an argument but will not
# complain that one is not passed in to the block because blocks have lenient arity rules.
# On the other hand, the method in this case is expecting a block and will raise
# an exception on the second method call because one has not been passed in.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# Here a method is defined which requires that a block is passed in as an argument.
# The block is expecting an argument but will not complain if one is not passed
# in to the block because blocks have lenient arity rules. Within the method
# definition, the argument passed to the method is also passed to the block. On the
# first method call, one parameter is called for in the block and one argument
# is given. On the second method invocation, two block local variables are created,
# yet only one argument is passed in. This means that the block's local variables
# which have not been given a value are initialized to nil. No exception is raised.
# On the third method call, the reason that this raises an exception is that the
# local variable was never created no naturally, this'll fail.  
