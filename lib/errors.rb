require 'colorize'

module ErrorsModule
  def space_before_semicolon?(char, char_index)
    return true unless char.match?(/( ;)+/)

    puts 'Error:'.red + 'on' + "line:[:#{char_index}:]".yellow. + ' Unexpected space before semicolon ";" '
  end

  def indentation(char, char_index)
    return true if str.match?(/^(\s{2})+([a-zA-Z0-9\-_]+)/)

    puts 'Error'.red + ' on' + " line:[:#{char_indx}:]".yellow + ' Expecting indentation to be two spaced  '
  end



end