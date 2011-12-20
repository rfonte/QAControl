class CreatePersonalTasks < ActiveRecord::Migration
  def change
    create_table :personal_tasks do |t|
      t.string :task
      t.string :label
      t.string :status

      t.timestamps
    end
  end
end
