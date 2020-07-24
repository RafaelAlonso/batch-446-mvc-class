require_relative 'task'

class Controller

  def initialize(repo, view)
    @repo = repo
    @view = view
  end

  def create
    # se queremos receber algo da view para o controller
    # retornamos a info no método da view
    task_name = @view.ask_task_name_for_user

    task = Task.new(task_name)
    @repo.insert_task(task)
  end

  def list
    # quero pegar a array de tasks de dentro do repo
    all_tasks = @repo.all
    # quero imprimir cada uma das tasks na tela
    # se queremos passar algo do controller para a view
    # passamos essa variável como argumento
    @view.show_all_tasks(all_tasks)
  end

end

# controller = Controller.new
# controller.add_task
# controller.add_task

# puts ""
# puts "Aqui está sua lista de tarefas:"
# controller.list_tasks

# controller.add_task

# puts ""
# puts "Aqui está sua lista de tarefas:"
# controller.list_tasks



