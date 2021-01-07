class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy
    has_many :post_category_relations, dependent: :destroy
    has_many :categories, through: :post_category_relations



    mount_uploader :image, ImageUploader

    validates :taste, :service, :cost, :atmosphere, :access, numericality:{
        less_than_or_equal_to: 5,
        greater_than_or_equal_to: 1
    }, presence: true 


    def average
        a = (taste + service + cost + atmosphere + access) / 5.0
        b = a.round(1)

        return b
    end

    def average_check
        a = (taste + service + cost + atmosphere + access) / 5.0
        b = a.round(1)
        if b == 5
            return "人生で一回は行くべき最高の店"
        elsif  b < 5 and b >= 4
            return "そのカテゴリ―で名をはせる店"
        elsif b < 4 and b >= 3
            return "人気のあるおいしい店"
        elsif b < 3 and b >= 2
            return "可もなく不可もない店"
        elsif b < 2 and b >= 1
            return "もう行かないと思われる店"
        else
            
        end
    end

    def taste_check
        if taste >= 5
            return "3150"
            
        elsif 5 > taste and taste >= 4
            return "まあまあうまい"
            
        else
            return ""
            
        end
    end

end
