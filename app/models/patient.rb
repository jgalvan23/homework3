class Patient < ApplicationRecord
    has_many :physicians
    has_many :appointments
end
