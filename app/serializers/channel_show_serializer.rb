class ChannelShowSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :messages
end
