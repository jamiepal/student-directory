#let's put all students into an array

def input_students
  students = []
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(names)
  names.each_with_index do |student, index|

    puts "#{index + 1}: #{student[:name]} (#{student[:cohort]} cohort)"

  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit #will cause program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
#nothing happens until we call the methods
interactive_menu
