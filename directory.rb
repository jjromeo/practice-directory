# let's put all students into an array
students =[
[name: "Peter Smith", :cohort => :november],
[name: "Jane Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Marianne Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november],
[name: "Peter Smith", :cohort => :november]
]
# and then print them
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print(details)
	details.each do |x, y|
		puts "#{x[:name]} (#{x[:cohort]} cohort)"
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
