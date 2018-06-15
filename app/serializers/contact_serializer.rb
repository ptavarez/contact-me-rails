class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :job_title, :phone_number, :email
end
