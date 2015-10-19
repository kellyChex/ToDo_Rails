class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :string
      t.column :completion, :boolean
      t.timestamps
    end
  end
end
