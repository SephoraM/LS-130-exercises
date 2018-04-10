# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# The string was never output because when the Proc was called, the 'return'
# keyword caused the method to return early. The return value of the method call
# is nil.

# Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)

# So this raises an exception. This has to do with the scope of the Proc. So,
# when we define a Proc, the scope of the Proc depends on the place from where it
# has been defined and it carries that scope around with it. So when the Proc is
# called, although it is being called from within a method defintion, that's not
# where it's being defined so the return keyword is looking for the method that
# it's being called on.

# Group 3
def check_return_with_lambda
  my_lambda = lambda { return "What?" }
  puts my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda

# The return keyword is not available to the regular Proc or the block, but it is
# available to the lambda. So when the return is called in the lambda it is simply
# explicitly returning the value of the lambda. It will not cause the method to
# return early

# Group 4
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)

# Because the return keyword doesn't have to look in it's outer scope to find the
# method that it's supposed to return, this will not raise an error.

# Group 5
def block_method_3
  yield
end

block_method_3 { return }

# Same thing as with the Proc, the block doesn't use the return keyword to return
# itself, it'll check the outer scope to find the method that it should explicitly
# return. If it cannot find a method in the outer scope that it can be tied to, it
# will raise an error


# The lambda is able to explicitly return, unlike any other kind of Proc.
# When a proc has a return defined within it, it will look in the outer scope for
# the method it should explicitly return. If it can't find it, an exception will
# be raised.
