module Promptable
  def prompt(message = 'What would you like to do?', symbol = ':> ')
    puts message
    puts symbol
    gets.chomp
  end
end
