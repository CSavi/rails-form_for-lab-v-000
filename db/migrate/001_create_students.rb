class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.integer :room_number

      t.timestamps null: false
    end
  end
end
