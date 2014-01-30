require_relative './grid'

class Sudoku
  attr_reader :grid

  def box_grid(row_index,col_index)
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
   
  def solve!
    while @array_of_rows.flatten.include?(0)
      @array_of_rows.each_with_index do |row, row_index| 
        row.each_with_index do |column, col_index| 
          if @array_of_rows[row_index][col_index] == 0
             @solutions = (1..9).to_a
             @solutions -= box_grid(row_index,col_index)  
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
end