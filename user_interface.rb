require_relative './grid'

puts "Let's start the game!"
puts " Please enter the 81 numbers characters found in the original Sudoku table, including zeros ('0') for any blank space(ex: 50030050060110440555...)"
  user_input = gets.chomp
  string_input = user_input.to_s
  grid = Grid.new(string_input)
  end

puts "Let's fill out a sudoku table with your original inputs"
  # Here goes the code for printing the board without solving it 
  # p grid.board

puts "Are you ready to see how I help you to solve your Sudoku game?, enter "Y" for yes and "N" for no "
  user_decision = gets.chomp
  if user_decision == "Y"
    # here goes the code to sudoku.solve!
  elsif user_decision == "N"
    puts "Goodbye!"
  else 
    "I dont understand what you are saying"
  end

puts "Goodbye"
