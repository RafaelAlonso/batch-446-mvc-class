class View

  def ask_task_name_for_user
    # perguntar para o usuário qual o nome da task que ele quer adicionar
    puts "Qual o nome da tarefa que deseja adicionar, mestre?"
    return gets.chomp
  end

  def show_all_tasks(all_tasks)
    all_tasks.each_with_index do |task, pos|
      puts "#{pos + 1} - #{task.name}"
    end
  end

end









