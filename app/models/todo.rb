class Todo < ApplicationRecord
    def to_pleasant_string
        "#{id}. #{due_date.to_s(:long)} #{todo_text} #{completed}"
    end
end
