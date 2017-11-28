class CreateQuestionComments < ActiveRecord::Migration[5.1]
  def change
    create_table :question_comments do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :body, :string

      t.timestamps
    end
  end
end
