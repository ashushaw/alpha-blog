class Article < ActiveRecord::Base
    
    has_many :article_categories
    has_many :categories, through: :article_categories
belongs_to :user
    validates :title, presence: true , length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {mimimum: 10, maximum: 300}
    validates :user_id, presence: true
end
