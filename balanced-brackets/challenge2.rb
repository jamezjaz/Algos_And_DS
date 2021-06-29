def balanced_brackets?(string)
  # your code here
  # create a stack
  stack = []
  # iterate through every char of the string
  string.each_char do |char|
    #   if the char is an opening paren, push to the stack
    if char == '(' || char == '[' || char == '{'
      stack.push(char)
    # if the char is a closing paren, make sure it has a matching closing paren
    elsif char == ')'
      if stack.empty? || stack.pop() != '('
        return false
      end
    elsif char == ']'
      if stack.empty? || stack.pop() != '['
        return false
      end
    elsif char == '}'
      if stack.empty? || stack.pop() != '{'
        return false
      end
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
