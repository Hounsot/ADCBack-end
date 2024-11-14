class AddTelegramDataToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :chat_id, :bigint
    add_column :users, :chat_type, :string
    add_column :users, :telegram_id, :bigint
    add_column :users, :telegram_username, :string
  end
end
