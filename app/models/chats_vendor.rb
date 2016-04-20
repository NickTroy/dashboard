class ChatsVendor < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :chat
end
