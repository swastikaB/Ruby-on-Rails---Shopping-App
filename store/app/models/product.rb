class Product < ApplicationRecord
    has_many :lineitems
    before_destroy :make_sure_no_lineitems
    validates :name, :description, :image, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :name, uniqueness: true
    validates :image, allow_blank: true,
    #SEARCH = ["Name", "Price", "Descriptiom"]
    format: {with: %r{\.(gif|jpeg|png)\Z}i, message: 'must be GIF, JPG, PNG images'}

    def make_sure_no_lineitems
        if lineitems.empty?
            return true
        else
            errors.add(:base, 'line items present')
            return false
        end
    end
    

end
