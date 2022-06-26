class TodosController < ApplicationController
  def index
    render "todos/index"
  end

  def create
    render "todos/create"
  end
  def del
    del_id = params[:del_id]
    cur_record = Todo.find(del_id)
    cur_record.destroy
    cur_record.save
    redirect_to "/"
  end

  def mac
    current_id = params[:id]
    current_id = current_id.strip.to_i
    cur_record = Todo.find(current_id)
    cur_record[:completed] = 1
    cur_record.save
    redirect_to "/"
  end

  def insert
    todo_text = params[:todo_text]
    due_date = params[:due_date]
    macid =
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
    )
    redirect_to "/"
  end


end
