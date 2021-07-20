def is_match(s, p)
  return true if /^#{p}$/.match(s)
  return false
end

puts is_match('abbb', 'ab*');
#  true
puts is_match('mississippi', 'mis*is*p*.');
#  false
puts is_match('acd', 'ab*c.');
#  true