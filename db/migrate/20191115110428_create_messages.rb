class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :user
      t.references :chat_room

      t.timestamps
    end
  end
end
