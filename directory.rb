@students = [] # an empty array accesible to all methods

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		puts "What is #{name}'s Hobby"
		hobby = gets.chomp
		puts "When was #{name} born (dd/mm/yyyy)?"
		dob = gets.chomp
		puts "Which country was #{name} born in?"
		cob = gets.chomp
		@students << {name: name, cohort: :november, hobby: hobby, dob: dob, cob: cob}
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
	i = 0
		while i < @students.length do 
		puts "#{@students[i][:name]} (#{@students[i][:cohort]} cohort)".center(85), "Their hobby is #{@students[i][:hobby]} and they were born on the #{@students[i][:dob]} in #{@students[i][:cob]}.".center(85)
		i += 1
	end
end

#finally, we print the total
def print_footer
	puts "Overall, we have #{@students.length} great students "
end


#nothing happens until we call the methods
interactive_menu