require 'colorize'

module ErrorsModule
  def space_before_semicolon?(char, char_index)
    return true unless char.match?(/( ;)+/)

    puts 'Error:'.red + 'on' + "line:[:#{char_index}:]".yellow. + ' Unexpected space before semicolon ";" '
  end

  



end