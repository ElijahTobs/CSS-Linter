require 'colorize'

module ErrorsModule
  def space_before_semicolon?(chars, chars_index)
    return true unless chars.match?(/( ;)+/)

    puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + ' Unexpected space before semicolon ";"'
  end

  def indentation?(_chars, chars_index)
    return true if chars.match?(/^(\s{2})+([a-zA-Z0-9\-_]+)/)

    puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + ' Expecting indentation to be two spaced'
  end

  def trailing_white_space?(chars, chars_index)
    if !chars.match?(/(?<=\S)[\t ]+$/) || chars.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + ' Unexpected white space'
    end
  end

  def ending_semicolon?(chars, chars_index)
    if chars.match?(/(;.*)$/) || chars.match?(/({|})/) || chars.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + ' Missing ending semicolon ";" '
    end
  end

  def space_before_colon?(chars, chars_index)
    return true unless chars.match?(/( :)/)

    puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + ' Unexpexted space before colon ":"'
  end

  def space_after_colon?(chars, chars_index)
    return true unless chars.match?(/(:\w+)/)

    puts 'Error'.red + ' on' + " line:[:#{chars_index}:]".yellow + 'Unexpexted space after colon ":" '
  end
end
