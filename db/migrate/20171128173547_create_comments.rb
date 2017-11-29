class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :user_id, :integer
      t.column :body, :string
      t.references :comentable, polymorphic: true, index: true
      t.timestamps
    end

  end
end
