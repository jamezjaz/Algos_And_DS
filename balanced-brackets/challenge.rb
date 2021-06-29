
def balanced_brackets?(string)
  # your code here
  # create a stack
  stack = []
  # iterate through every char of the string
  string.each_char do |char|
    # if the char is an opening paren, push to the stack
    case char
      when '(' then stack.push(char)
      when '[' then stack.push(char)
      when '{' then stack.push(char)
      when ')' then return !(stack.empty? || stack.pop() != '(')
      when ']' then return !(stack.empty? || stack.pop() != '[')
      when '}' then return !(stack.empty? || stack.pop() != '{')
    end
  end
    stack.empty? ? true : false
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true

puts balanced_brackets?(')([)]')
# => false

puts balanced_brackets?('((}]{](')
# => false

puts balanced_brackets?('')
# => true
