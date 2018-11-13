class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.deserve
    where(subtitle: 'The service you deserve')
  end

  scope :need, -> { where(subtitle: 'The service you need right now') }
end
