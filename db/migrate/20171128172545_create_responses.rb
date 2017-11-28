class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :body, :string

      t.timestamps
    end
  end
end
