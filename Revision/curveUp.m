function newGrades = curveUp(grades,extraCredit)
grades(extraCredit) = ceil(grades(extraCredit)./10)*10
newGrades = grades
end