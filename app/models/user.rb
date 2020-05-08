class User < ApplicationRecord
    has_many :posts
    # has_many :categories, through: :posts

    has_many :comments
    has_many :commented_posts, through: :comments, source: :post
    has_secure_password #authenticate, validate pw &/or pw confirmation
    
end
