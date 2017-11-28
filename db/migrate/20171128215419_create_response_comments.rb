class CreateResponseComments < ActiveRecord::Migration[5.1]
  def change
    create_table :response_comments do |t|
      t.column :user_id, :integer
      t.column :response_id, :integer
      t.column :body, :string

      t.timestamps
    end
  end
end
