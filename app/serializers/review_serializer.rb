class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :doctor_id
  belongs_to :doctor
  class DoctorSerializer < ActiveModel::Serializer
    attributes :name
  end
end
