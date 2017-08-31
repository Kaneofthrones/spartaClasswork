class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :teacher

      t.timestamps
    end
  end
end
