class Chat < ActiveRecord::Base
	has_many :chats_vendors, dependent: :destroy
  has_many :vendors, through: :chats_vendors, dependent: :nullify
end
