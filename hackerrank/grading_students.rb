def solve(grades)
  grades.map do |g|
    rounded_grade = g % 5 >= 3 ? g + 5 - g % 5 : g
    rounded_grade < 40 ? g : rounded_grade
  end
end