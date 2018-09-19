class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :instructor
      t.string :location
      t.string :time
      t.string :todo
      t.references :academic, foreign_key: true
      
      t.timestamps
    end
  end
end
