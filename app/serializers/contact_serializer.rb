# frozen_string_literal: true

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :job_title, :phone_number, :email,
             :editable

  def editable
    scope == object.user
  end
end
