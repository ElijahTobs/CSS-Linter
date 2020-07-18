require_relative 'errors.rb'

module ErrorsChecker
  include ErrorsModule
  attr_reader :chars_array

  def initialize(chars_array)
    @chars_array = chars_array
  end

  def inspect
    chars_array.each_with_index do |chars, index|
      
    end
    
  end



end

# arr = [2,4,3,1,7,5,9]
# require 'colorize'

# def test(num)
#   unless num.even?
#     "Number is odd".cyan
#   else
#     "Number is even".green
#   end
# end

# puts test(6)
