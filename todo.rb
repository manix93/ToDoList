require_relative 'models/list'
require_relative 'models/task'
require_relative 'helpers/menu'
include Menu
require_relative 'helpers/promptable'
include Promptable

my_list = List.new
puts Menu.welcome
loop do
  puts Menu.show
  user_input = prompt.downcase
  break if user_input == 'q'

  case user_input
  when '1' then my_list.add(prompt('Write task below'))
  when '2' then puts my_list.show
  else puts 'Wrong choose'
  end
end
