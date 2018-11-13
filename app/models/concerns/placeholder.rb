module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}?text=Via+Placeholder.com"
  end
end
