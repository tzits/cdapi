class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :reviews
  class ReviewSerializer < ActiveModel::Serializer
    attributes :text
  end
end
