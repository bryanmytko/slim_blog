class Post < ActiveRecord::Base
  belongs_to :author, class_name: User

  validates :content, :title, :author, :slug,
    presence: true

  validates :slug, uniqueness: true

  def to_param
    title.parameterize
  end
end
