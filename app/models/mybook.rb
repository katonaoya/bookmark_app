class Mybook < ApplicationRecord
  validates :title, presence: true
  VALID_PAGE_REGEX = /\d{2,4}/
  validates :page, presence: true, format: { with: VALID_PAGE_REGEX }

  has_many :records
end
