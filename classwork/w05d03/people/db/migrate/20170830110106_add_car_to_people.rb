class AddCarToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :car, :string
  end
end
