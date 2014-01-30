class Sudoku 
  attr_reader :board
  def initialize(string_input)
    @string_input = string_input
    @array_of_rows = []
    create_rows
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

  def nine_box_grid(row_index,col_index)
    row_off_set =   row_index - (row_index % 3)
    col_off_set = col_index - (col_index % 3)
    box_array = []

    x= 0
    while x < 3
      y=0
      while y < 3
        box_array << @array_of_rows[row_off_set + x][col_off_set + y]
        y+=1
      end
      x+=1
    end
    return box_array
  end
   
  def sudoku_solve!
    while @array_of_rows.flatten.include?(0)
      @array_of_rows.each_with_index do |row, row_index| 
        row.each_with_index do |column, col_index| 
          if @array_of_rows[row_index][col_index] == 0
             @solutions = (1..9).to_a
             @solutions -= nine_box_grid(row_index,col_index)  
             @solutions -= get_row(row_index)  
             @solutions -= get_column(col_index)
             if @solutions.size == 1
              @array_of_rows[row_index][col_index] = @solutions.join("").to_i
              puts
              board
              puts
             end   
          end
        end
      end
    end
  end

  # def is_solved?
  #   return true ? self.sudoku_solve! 
  # end

  private
  def validate(string_input)
    if string_input.length > 81 
      raise ArgumentError, "Your input must be 81 character long and currently it is greater than 81"
    elsif string_input.length < 81 
      raise ArgumentError, " Your input must be 81 character long and currently it is less than 81"
    end
  end

end


