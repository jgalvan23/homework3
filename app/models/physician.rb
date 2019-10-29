class Physician < ApplicationRecord
    has_many :patients, inverse_of: :physician

end
