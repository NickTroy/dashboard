class Message < ActiveRecord::Base
  belongs_to :chat
  belongs_to :vendor
end
