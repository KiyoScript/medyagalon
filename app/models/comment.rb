class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :story
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
end
