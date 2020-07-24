class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    while @running
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "\n---"
    puts 'What do you want to do?'
    puts '1 - Display tasks'
    puts '2 - Add a new task'
    puts '0 - Exit the program'
    puts '---'
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 0 then @running = false
    else
      puts "Please type 1, 2 or 0 :)"
    end
  end
end
