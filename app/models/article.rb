class Article < ApplicationRecord
  belongs_to :user
  enum status: {draft: "draft", published: "pablished"}
end
