class Task
  attr_reader :name

  def initialize(name)
    @name = name
    @done = false
    # @date =
  end
end

# t1 = Task.new("Terminar tasks")
# p t1

# t2 = Task.new("Terminar aula")
# p t2
