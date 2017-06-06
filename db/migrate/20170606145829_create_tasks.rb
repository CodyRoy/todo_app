class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :list_id

      t.timestamps
    end
  end
end
