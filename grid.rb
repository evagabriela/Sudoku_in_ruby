class Grid
  attr_reader :board
  def initialize(string_input)
    @string_input = string_input
    @array_of_rows = []
    create_rows
    validate(string_input)
    # get_row
    # get_column
  end

  # create rows of 9 spaces 
  # Output: An array of 9 nested arrays which represents each row
  def create_rows
    new_string_num = @string_input.split(//).to_a.map {|char| char.to_i}
    9.times {@array_of_rows << new_string_num.shift(9)}
    @array_of_rows
  end


   def get_row(row_index)
    @array_of_rows[row_index] 
  end
 
 # The transpose method creates an array with elements with same index #
  def get_column(col_index)
    @array_of_rows.transpose[col_index]
  end


  def board
    (0..8).to_a.each do |i|
      puts
      puts "- " * 12 if i%3==0
      (0..8).to_a.each do |j|  
        print "| " if j%3==0
        print @array_of_rows[i][j].to_s + " "
      end
    end
  end


  private
  def validate(string_input)
    if string_input.length > 81 
      raise ArgumentError, "Your input must be 81 character long and currently it is greater than 81"
    elsif string_input.length < 81 
      raise ArgumentError, " Your input must be 81 character long and currently it is less than 81"
    end
  end

end


