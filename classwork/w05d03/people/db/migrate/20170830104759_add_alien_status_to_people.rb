class AddAlienStatusToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :alien_status, :string
  end
end
