class Event < ApplicationRecord
  belongs_to :event_category
  belongs_to :user
  belongs_to :location
end
