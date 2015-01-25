class Post < ActiveRecord::Base
  belongs_to :author, class_name: "Admin"

  validates :author, :content, :title,
    presence: true
end
