class TasksView
  def ask_user_for_description
    puts "What do you wish to do?"
    return gets.chomp
  end

  # Display all the tasks in the array
  def display(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index} - #{task.description}"
    end
  end

  def ask_user_for_index
    puts "Please select the index:"
    return gets.chomp.to_i
  end
end
