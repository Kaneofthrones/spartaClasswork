class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :age
      t.string :student

      t.timestamps
    end
  end
end
