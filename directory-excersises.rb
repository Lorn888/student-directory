def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "hobbies"
  hobbies = gets.chomp
  puts "country of birth"
  country = gets.chomp
  puts "height"
  height = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, country: country, height: height,}
    puts "Now we have #{students.count} students"
    puts "next student" if !name.empty?
    # get another name from the user
    name = gets.chomp
    puts "hobbies" if !name.empty?
    hobbies = gets.chomp if !name.empty?
    puts "country of birth" if !name.empty? 
    country = gets.chomp if !name.empty?
    puts "height"  if !name.empty?
    height = gets.chomp



  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  count = 0
  until students.size == count
    puts "#{students[count][:name].center(10," ")}(#{students[count][:cohort]} cohort) | hobies: (#{students[count][:hobbies].center(10," ")}) country: (#{students[count][:country].center(10," ")}) height: (#{students[count][:height].center(6," ")})"
  count += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)