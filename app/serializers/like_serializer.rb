class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :message
end
