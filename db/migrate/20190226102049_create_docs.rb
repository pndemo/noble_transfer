class CreateDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :docs do |t|
      t.integer :user_id

      t.timestamps
    end

    # Add index for user id
    add_index :docs, :user_id
  end
end
