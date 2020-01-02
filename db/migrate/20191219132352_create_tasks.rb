class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :project, type: :uuid, null: false, foreign_key: true
      t.string :title, null: false
      t.text :detail
      t.datetime :deadline_at
      t.integer :status
      t.integer :priority
      t.integer :position

      t.timestamps
    end
  end
end
