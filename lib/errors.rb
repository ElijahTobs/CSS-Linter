require 'colorize'

module ErrorsModule
  def space_before_semicolon?(char, char_index)
    return true unless char.match?(/( ;)+/)

    puts 'Error:'.red + 'on' + "line:[:#{char_index}:]".yellow. + ' Unexpected space before semicolon ";" '
  end

  def indentation?(char, char_index)
    return true if str.match?(/^(\s{2})+([a-zA-Z0-9\-_]+)/)

    puts 'Error'.red + ' on' + " line:[:#{char_indx}:]".yellow + ' Expecting indentation to be two spaced'
  end

  def trailing_white_space?(char, char_index)
    if !char.match?(/(?<=\S)[\t ]+$/) || char.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on' + " line:[:#{data_index}:]".yellow + ' Unexpected white space'
    end
  end

  def ending_semicolon?(char, char_index)
    if char.match?(/(;.*)$/) || char.match?(/({|})/) || char.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on' + " line:[:#{char_index}:]".yellow + ' Missing ending semicolon ";" '
    end
  end

  def space_before_colon?(char, char_index)
    return true unless char.match?(/( :)/)

    puts 'Error'.red + ' on' + " line:[:#{char_index}:]".yellow + 'Unexpexted space before colon ":" '
  end
  
  def space_after_colon?(char, char_index)
    return true unless char.match?(/(:\w+)/)
    
    puts 'Error'.red + ' on' + " line:[:#{char_index}:]".yellow + 'Unexpexted space after colon ":" '
  end
end