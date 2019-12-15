class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.text :description

      t.timestamps
    end
  end
end
