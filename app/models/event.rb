class Event < ApplicationRecord
  acts_as_schedulable :schedule
  belongs_to :user
end
