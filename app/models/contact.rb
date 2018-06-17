# frozen_string_literal: true

class Contact < ApplicationRecord
  include PgSearch

  pg_search_scope :search_for,
                  against: %i[first_name last_name job_title phone_number email],
                  using: { tsearch: { any_word: true, prefix: true } }
end
