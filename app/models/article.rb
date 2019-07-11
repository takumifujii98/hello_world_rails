class Article < ApplicationRecord
  belongs_to :user
  enum status: [:public, :private]
end
