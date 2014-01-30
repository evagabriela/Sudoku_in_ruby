module Helpers
  def Helpers.print_matrix(input_string)
    (0..8).each do |i|
        print "   "
      (0..8).each do |j|
        print "| "
      end
      puts "| "
    end
  end
end