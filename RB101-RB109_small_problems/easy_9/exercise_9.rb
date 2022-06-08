=begin
Grade book

Write a method that determines the mean (average) of the three scores passed to it,
and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values
or values greater than 100.

**problem**

- input is three scores (integers)
- output is the letter grade for the mean of the scores(string)
- input values are between 0 and 100

**examples**

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

**data structures**

- array for inputs
- ranges for letter grades

**algorithm**

- get the average of the input scores
- compare the average to the values for the letter grades
- return the letter grade
=end

def get_grade(score1, score2, score3)
  mean_score = [score1, score2, score3].sum / 3.0

  case mean_score
  when (90..100) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  when (0...60)  then 'F'
  else                'A+'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(110, 105, 100) == "A+"
