class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll
      t.text :email
      t.string :docs

      t.timestamps
    end
  end
end
