# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  prefix = strs[0]
  strs[1..-1].each do |str|
    next if str.index(prefix) == 0
    while str.index(prefix) != 0 and prefix.length > 0
      prefix.chop!
    end
  end
  prefix
end