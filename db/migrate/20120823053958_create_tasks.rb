class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.boolean :finished

      t.timestamps
    end
  end
end
