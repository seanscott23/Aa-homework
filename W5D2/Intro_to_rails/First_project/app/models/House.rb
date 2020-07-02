class House < ApplicationRecord

    has_many :residents
    :primary_key
    :foreign_key
    :class_name: :Person
end