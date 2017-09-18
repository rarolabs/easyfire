Membro = Easyfire::EasyfireModel.new.compile do

  model_name :Membro
  description "Represents a chat thread"
  model_type :entity

  attribute :title do
    attr_description "Title of the chat room"
    attr_example "Historical Tech Pioneers"
    attr_data_type :String
  end

  attribute :lastMessage do
    attr_description "Last message in this thread"
    attr_example "ghopper: Relay malfunction found. Cause: moth."
    attr_data_type :String
  end

  attribute :timestamp do
    attr_description "Timestamp of the last message"
    attr_example "1459361875666"
    attr_data_type :Long
  end


end
#
# class Message < Easyfire::EasyfireModel
#
#   description "Represents a message sent to a chat thread"
#   model_type :Entity
#
#   attributes do
#
#     define :name do
#       description "Who sent the message"
#       example "Ada Lovelace"
#       data_type :String
#     end
#
#     define :content do
#       description "Content of the message"
#       example "The relay seems to be malfunctioning"
#       data_type :String
#     end
#
#     define :timestamp do
#       description "When this message was created"
#       example 1459361875666
#       data_type :Long
#     end
#   end
# end
#
# class MembersOfChats < Easyfire::EasyfireModel
#   description "Members of a specific chat thread"
#   model_type :HierarchicalAssociation
#   # parent Chat
#   # child Member
# end
