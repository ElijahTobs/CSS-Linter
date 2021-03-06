require_relative 'errors.rb'

class ErrorsChecker
  include ErrorsModule
  attr_reader :chars_array

  def initialize(chars_array)
    @chars_array = chars_array
  end

  # rubocop: disable Metrics/PerceivedComplexity
  # rubocop: disable Metrics/CyclomaticComplexity
  def inspect
    errors = 0
    chars_array.each_with_index do |chars, index|
      chars_index = index + 1

      errors += 1 unless space_before_semicolon?(chars, chars_index)
      errors += 1 unless indentation?(chars, chars_index)
      errors += 1 unless trailing_white_space?(chars, chars_index)
      errors += 1 unless ending_semicolon?(chars, chars_index)
      errors += 1 unless space_before_colon?(chars, chars_index)
      errors += 1 unless space_after_colon?(chars, chars_index)
    end
    puts 'No Errors Found'.green if errors.zero?
    puts
    puts 'Fix Errors!'.red unless errors.zero?
  end
  # rubocop: enable Metrics/PerceivedComplexity
  # rubocop: enable Metrics/CyclomaticComplexity
end
