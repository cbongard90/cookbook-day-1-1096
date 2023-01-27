# The file name is written in lower_snake_case
class TaskRepository #! UpperCamelCase
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def create(task)
    @tasks.push(task) # @tasks << task
  end

  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
