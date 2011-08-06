class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :note
      t.string :username
      t.string :website
      t.string :email
      t.text :body
      t.timestamps
    end
  end
end
