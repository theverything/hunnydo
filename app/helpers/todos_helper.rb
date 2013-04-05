module TodosHelper

  def checked(task_done)
    checked = "checked"
    checked if task_done
  end

end
