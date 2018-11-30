class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilised
end
