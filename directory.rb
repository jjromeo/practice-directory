@students = [] # an empty array accesible to all methods
@check

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	name = gets.slice(0..-2)
	# while the name is not empty, repeat this code
	while !name.empty? do
		puts "What cohort is #{name} in?"
		cohort = gets.slice(0..-2)
		cohort = "August" if cohort.empty?
		puts "What is #{name}'s Hobby"
		hobby = gets.chomp.slice(0..-2)
		puts "When was #{name} born (dd/mm/yyyy)?"
		dob = gets.chomp.slice(0..-2)
		puts "Which country was #{name} born in?"
		cob = gets.chomp.slice(0..-2)
		#check that the student was entered correctly
		puts "You entered: #{@name} | Hobby: #{@hobby} | Date of birth: #{@dob} | Country of birth: #{@cob}\n Is this correct? y/n"
		@check = gets.chomp.downcase
		until @check == "y" || @check == "n" do
		puts "Sorry, please answer y or n. You entered: #{@name} | Hobby: #{@hobby} | Date of birth: #{@dob} | Country of birth: #{@cob}\n Is this correct? y/n"
			@check = gets.chomp.downcase
			end
			if @check == "y" 
				@students << {name: name, cohort: cohort, hobby: hobby, dob: dob, cob: cob}
				puts "now we have #{@students.length} students"
			else 
				puts "please enter the student's details again"
		end
		#get another name from the user
		puts "enter student name"
		name = gets.slice(0..-2)
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
	prints_student_details
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

def cohorts 
	@students.map { |mapitem| mapitem[:cohort]}.uniq
end


def prints_student_details
	if !@students.empty?
		#lists the cohort
		cohorts.each do |cohort|
			print "The #{cohort} cohort\n"
		#lists the students in that cohort
			@students.select {|x| x[:cohort] == cohort}.each_with_index do |student, i|
				print "#{i + 1}. #{student[:name]}. Their hobby is #{student[:hobby]} and they were born on the #{student[:dob]} in #{student[:cob]}.\n".center(50) 
				if @students.length > 1
					 puts "Overall, we have #{@students.length} great students " 
				else puts "Overall, we have #{@students.length} great student"
				end
			end
		end
	else
		puts "The student directory is currently empty"
	end
end

#finally, we print the total
def print_footer
	
end


#nothing happens until we call the methods
interactive_menu