class ChangeCourseTodoColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :todo, :text
  end
end
