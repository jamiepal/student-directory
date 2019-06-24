#let's put all students into an array
@students = [] #empty global array
def input_students

  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_students_list(names)
  names.each_with_index do |student, index|

    puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)"

  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def interactive_menu

  loop do
    print_menu
    process(gets.chomp)
  end
end
def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end
def show_students
  print_header
  print_students_list(@students)
  print_footer(@students)
end
def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you mean, try again"
  end
end
#nothing happens until we call the methods
interactive_menu
