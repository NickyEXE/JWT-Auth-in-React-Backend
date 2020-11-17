class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :username, :like_count
end
