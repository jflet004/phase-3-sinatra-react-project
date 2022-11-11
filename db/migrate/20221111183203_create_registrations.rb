class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.integer :program_id
      t.integer :student_id
      t.timestamps
    end
  end
end
