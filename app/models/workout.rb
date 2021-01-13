class Workout < ApplicationRecord
    has_many: :sets
    #belongs to a workout template?
end
