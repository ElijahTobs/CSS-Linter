require_relative 'errors.rb'

module ErrorsChecker
  include ErrorsModule
  attr_reader :error_array

  def initialize(error_array)
    @error_array = error_array
  end

  


end