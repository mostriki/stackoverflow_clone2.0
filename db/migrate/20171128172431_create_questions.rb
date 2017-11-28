class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :user_id, :integer
      t.column :title, :string
      t.column :body, :string

      t.timestamps
    end
  end
end
