def reverse_number(num)
  reverse = 0
  loop_num = num.abs
  while(loop_num > 0)
    remainder = loop_num % 10
    loop_num = loop_num / 10
    reverse = reverse * 10 + remainder
  end
  num > 0  ? reverse : -reverse
end