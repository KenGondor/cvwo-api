class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :start
      t.date :due
      t.integer :priority
      t.text :description

      t.timestamps
    end
  end
end
