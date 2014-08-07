#first we print the list of students
puts "The students of my cohort at Makers Academy"
puts "-----------------"
# let's put all students into an array
students =[
"Peter Smith",
"Jane Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Marianne Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith",
"Peter Smith"
]
# and then print them

students.each do |x|
	puts x
end

#finally, we print the total
puts "Overall, we have #{students.length} great students "
#it's important that print() doesn't add newline characters