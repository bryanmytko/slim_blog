class Post < ActiveRecord::Base
  belongs_to :author, class_name: AdminUser

  validates :content, :title, :author,
    presence: true

  def to_param
    slug
  end
end
