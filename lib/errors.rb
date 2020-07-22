require 'colorize'

module ErrorsModule
  def space_before_semicolon?(chars, chars_index)
    return true unless chars.match?(/( ;)+/)

    puts 'Error'.red + ' on'.blue + " line:[:#{chars_index}:]".yellow + ' Unexpected space before semicolon ";"'.blue
  end

  def indentation?(chars, chars_index)
    return true unless chars.match?(/^\w+\s*-.\w*:/) || chars.match?(/^\w+\s*\w*:/)

    puts 'Error'.red + ' on'.blue + " line:[:#{chars_index}:]".yellow + ' Expecting indentation to be two spaced'.blue
  end

  def trailing_white_space?(chars, chars_index)
    if !chars.match?(/(?<=\S)[\t ]+$/) || chars.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on'.blue + " line:[:#{chars_index}:]".yellow + ' Unexpected white space'.blue
    end
  end

  def ending_semicolon?(chars, chars_index)
    if chars.match?(/(;.*)$/) || chars.match?(/({|})/) || chars.match?(/^\n$/)
      true
    else
      puts 'Error'.red + ' on'.blue + " line:[:#{chars_index}:]".yellow + ' Missing ending semicolon ";" '.blue
    end
  end

  def space_before_colon?(chars, chars_index)
    return true unless chars.match?(/( :)/)

    puts 'Error'.red + ' on'.blue + " line:[:#{chars_index}:]".yellow + ' Unexpexted space before colon ":"'.blue
  end

  def space_after_colon?(chars, chars_index)
    return true unless chars.match?(/(:\w+)/)

    puts 'Error'.red + ' on'.blue.blue + " line:[:#{chars_index}:]".yellow + ' Expected space after colon ":" '.blue
  end
end
