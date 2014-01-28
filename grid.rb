class Grid
  attr_reader :string_input

  def initialize(string_input)
    create_rows
    validate(string_input)
  end

  # create rows of 9 spaces 
  def create_rows
    rows = self.string_input.scan(/.{9}/)
  end


  private
  def validate
    raise ArgumentError, "Your input must be 81 character long"
  end

end