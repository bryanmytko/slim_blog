class Post < ActiveRecord::Base
  validates :content, :title,
    presence: true

  def to_param
    slug
  end
end
