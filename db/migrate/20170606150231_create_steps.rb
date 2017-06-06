class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.text :content
      t.integer :task_id

      t.timestamps
    end
  end
end
