class Repository

  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def insert_task(task)
    @tasks << task
  end

  def remove_task(task_pos)
    @tasks.delete_at(task_pos)
  end

  # def mark_task_as_done

  # end
end


# repo = Repository.new
# t1 = Task.new("Inserir task no repositório")
# repo.insert_task(t1)

# t2 = Task.new("Completar a aula de hoje")
# repo.insert_task(t2)
# p repo

# repo.remove_task(0)
# p repo
