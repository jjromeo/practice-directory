@students = [] # an empty array accesible to all methods

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		@students << {:name => name, :cohort => :november}
		puts "Now we have #{@students.length} students"
		# get another name from the user
		puts "Please enter the name of the next student"
		name = gets.chomp
	end
	# return array of students
	@students
end

# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit" #9 because we'll be adding more items
end

def show_students
	print_header
	print_students_list
	print_footer
end

def interactive_menu
	loop do
	#1. print the menu and ask the user what to do
	print_menu
	#2. read the input and save it into a variable
	process(gets.chomp)
	#3. do what the user has asked
	end
end

def process(selection)
	case selection
	  when "1"
	  # input the students
 	  input_students
	  when "2"
	  # show the students
	  show_students
	  when "9"
		  exit # this will cause the program to terminate
	  else
	  	puts "I don't know what you meant, try again"
	  end

end

def print_students_list
		@students.each_with_index do |x, y|
		puts "#{y + 1}. #{x[:name]} (#{x[:cohort]} cohort)" if x[:name].length < 12
	end
end

#finally, we print the total
def print_footer
	puts "Overall, we have #{@students.length} great students "
end


#nothing happens until we call the methods
interactive_menu