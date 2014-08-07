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
]
# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print(names)
	names.each do |x|
		puts x
	end
end

#finally, we print the total
def print_footer(names)
	puts "Overall, we have #{names.length} great students "
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
