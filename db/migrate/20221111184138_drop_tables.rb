class DropTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :students
    drop_table :registrations
    drop_table :programs
  end
end
