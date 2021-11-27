class Record < ApplicationRecord
  VALID_PAGE_REGEX = /\d{2,4}/
  validates :readed_page, presence: true, format: { with: VALID_PAGE_REGEX }

  belongs_to :mybook
end
