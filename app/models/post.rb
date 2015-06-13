class Post < ActiveRecord::Base
  validates :content, :title,
    presence: true
end
