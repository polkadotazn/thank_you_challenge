class CreateTyNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :ty_notes do |t|
      t.integer :gifter_id
      t.string :first_name
      t.string :last_name
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
