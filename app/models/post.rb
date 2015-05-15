class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :body, presence: true

  default_scope { where(published: true) }
end
