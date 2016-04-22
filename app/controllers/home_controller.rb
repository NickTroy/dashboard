class HomeController < ApplicationController
  layout :resolve_layout
  before_filter :authenticate_vendor! , :except => [:welcome, :thank_you]
  def index
    @vendors_online = Vendor.where('last_seen > ?', 5.minutes.ago)
    @vendor_chat_messages = {}
    @vendor_chats = {}
    @vendors_online.each do |vendor|
      unless vendor.id == current_vendor.id
        Chat.where( :kind => "personal").each do |chat|
          unless chat.vendors.where(:id => vendor.id).empty? or chat.vendors.where(:id => current_vendor.id).empty?
            @chat = chat
            break  
          end
        end
        if @chat.nil? 
          @chat = Chat.new( :kind => "personal" )
          @chat.vendors << vendor
          @chat.vendors << current_vendor
          @chat.save
        end
        @vendor_chat_messages[vendor.id] = @chat.messages
        @vendor_chats[vendor.id] = @chat
      end 
    end
  end

  def login
  end

  def registration
  end

  def welcome
  end

  def thank_you
  end

  private
  def resolve_layout
    case action_name
    when "index"
      "application"
    when "welcome"
      "home"
    when "thank_you"
      "home"
    else
      "registration"
    end
  end
end
