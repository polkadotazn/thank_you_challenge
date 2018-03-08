class AddIndexToThankYous < ActiveRecord::Migration[5.1]
  def change
    add_index :ty_notes, :gifter_id
  end
end
