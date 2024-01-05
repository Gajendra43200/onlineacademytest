class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.float :correct_percentage
      t.references :completed_subject, null: false, foreign_key: true
      t.timestamps
    end
  end
end
