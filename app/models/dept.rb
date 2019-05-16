class Dept < ApplicationRecord
    has_many :items, dependent: :destroy
end
