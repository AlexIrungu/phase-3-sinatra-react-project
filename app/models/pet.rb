class Pet < ActiveRecord::Base
    has_one :adoption
    has_one :user, through: :adoption
end