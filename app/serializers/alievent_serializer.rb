class AlieventSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :number, :company, :branch, :suggestions
end
