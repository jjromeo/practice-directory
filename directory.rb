def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :november}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return array of students
	students
end
# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print(details)
	details.each_with_index do |x, y|
		puts "#{y + 1}. #{x[:name]} (#{x[:cohort]} cohort)" if x[:name].length < 12
	end
end

#finally, we print the total
def print_footer(names)
	puts "Overall, we have #{names.length} great students "
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
