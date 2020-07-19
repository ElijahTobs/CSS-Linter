require_relative 'errors.rb'

module ErrorsChecker
  include ErrorsModule
  attr_reader :chars_array

  def initialize(chars_array)
    @chars_array = chars_array
  end

  def inspect
    counter = 0
    chars_array.each_with_index do |chars, index|
      chars_index = index + 1

      space_before_semicolon?(chars, chars_index)
      indentation?(chars, chars_index)
      trailing_white_space?(chars, chars_index)
      ending_semicolon?(chars, chars_index)
      space_before_colon?(chars, chars_index)
      space_after_colon?(chars, chars_index)
    end
    puts "File Check Complete!".green
    true
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
