class CreateWord < ApplicationRecord
  validates :word, :presence => true
end
