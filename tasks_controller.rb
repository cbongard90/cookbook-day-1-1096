require_relative 'tasks_view'
require_relative 'task'


class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def add
    # we get the description from the user
    description = @view.ask_user_for_description
    # Create a new task
    task = Task.new(description)
    # Add to the repository
    @repository.create(task)
  end

  def mark_as_done
    # Display the tasks with the index
    display_tasks
    # ask the user for which index
    index = @view.ask_user_for_index
    # we fetch the task from the repo
    task = @repository.find(index)
    # Mark as done
    task.mark_as_done!
  end

  def remove
    # Display the tasks with the index
    display_tasks
    # ask the user for which index
    index = @view.ask_user_for_index
    # We destroy from the repository
    @repository.destroy(index)

  end

  private

  def display_tasks
    # Fetch the tasks from the repo
    tasks = @repository.all
    # Display the tasks
    @view.display(tasks)
  end

end
