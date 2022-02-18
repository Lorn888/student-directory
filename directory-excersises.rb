def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp 
  
  cohort_spelling = ["No entry", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  
  puts "cohort"
  cohort = gets.chomp 
  while !cohort_spelling.include?(cohort.downcase.capitalize) do
    puts "Enter Cohort again"
    cohort = gets.chomp
  end
  puts "hobbies"
  hobbies = gets.chomp
  puts "country of birth"
  country = gets.chomp
  puts "height"
  height = gets.chomp
  

  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: cohort.to_sym, hobbies: hobbies, country: country, height: height,}
    puts "Now we have #{students.count} students"
    puts "next student" if !name.empty?
    # get another name from the user
    name = gets.chomp if !name.empty?
    puts "cohort" if !name.empty?
    cohort = gets.chomp if !name.empty?
    
     while !cohort_spelling.include?(cohort.downcase.capitalize) do
    puts "Enter Cohort again"
    cohort = gets.chomp
  end
  
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
  
  sorted_by_cohort = {}

  students.each do |student|
    cohort = student[:cohort]
    
  if sorted_by_cohort[cohort] == nil
    sorted_by_cohort[cohort] = []
  end
  
  sorted_by_cohort[cohort].push(student[:name])
  
end

puts "Please enter the cohort you wish to view hit return to view all students"
  user_input = gets.chomp.downcase.capitalize.to_sym

  puts "\n\n\n" 
  print_header
  puts
  
   sorted_by_cohort.each do |cohort, list|
    if user_input == :""
      puts "#{cohort} Cohort\n "
      list.each do |student|
        puts student 
      end
      puts
    elsif cohort == user_input
      puts "#{cohort} Cohort\n"
      list.each do |student|
        puts student
      end
      puts
    end
  end  
  
  
  
  
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
print(students)
print_footer(students)