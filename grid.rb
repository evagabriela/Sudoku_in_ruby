class Grid
  attr_reader :string_input

  def initialize(string_input)
    @string_input = string_input
    create_rows
    validate(string_input)
    create_columns
  end

  # create rows of 9 spaces 
  # Output: An array of 9 string elements 
  def create_rows
    rows = self.string_input.scan(/.{9}/)
  end

  def create_columns
    
  end


  private
  def validate(string_input)
    raise ArgumentError, "Your input must be 81 character long"
  end

end