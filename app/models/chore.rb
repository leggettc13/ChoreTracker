class Chore < ActiveRecord::Base
    belongs_to :child
    has_one: repeat_info
end
