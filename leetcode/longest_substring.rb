# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  best_substring = ''
  substring = ''
  s.each_char do |c|
    if substring.include? c
      best_substring = substring if substring.length > best_substring.length
      char_occurs_at = substring.index(c)
      substring = substring.slice(char_occurs_at+1..-1)
    end
    substring << c
  end
  [best_substring.length, substring.length].max
end