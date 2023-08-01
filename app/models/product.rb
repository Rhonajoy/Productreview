class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    def all_reviews
        reviews.each(&:print_review)
      
    end
    def leave_rating(user, star_rating, comment)
        Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end
    
    def average_rating
        ratings=reviews.pluck(:star_rating)
        average = ratings.sum / ratings.size.to_f
      
    end

end