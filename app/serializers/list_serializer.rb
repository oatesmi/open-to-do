class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :private
end
