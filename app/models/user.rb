class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    def favouriteproduct
        products.order(star_rating: :desc).first
    end
    def remove_reviews
        reviews.where(product: products).destroy_all
    end
end