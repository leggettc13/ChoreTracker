class RepeatInfo < ActiveRecord::Base
    belongs_to :chore
    enum repeat_type: ['daily', 'weekly', 'monthly']
end
