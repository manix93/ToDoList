module Promptable
  def prompt(message = 'What would you like to do?', symbol = ':> ')
    puts message
    print symbol
    gets.chomp
  end

  def getTask
    puts 'Write task below:'
    print ':> '
  end
end
