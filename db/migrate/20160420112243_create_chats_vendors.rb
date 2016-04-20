class CreateChatsVendors < ActiveRecord::Migration
  def change
    create_table :chats_vendors do |t|
      t.references :vendor, index: true
      t.references :chat, index: true

      t.timestamps
    end
  end
end
