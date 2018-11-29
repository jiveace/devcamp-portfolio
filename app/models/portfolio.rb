class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda {|attrs| attrs['name].blank?']}

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.deserve
    where(subtitle: 'The service you deserve')
  end

  def self.by_position
    order("position ASC")
  end

  scope :need, -> { where(subtitle: 'The service you need right now') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://cdn.sescoops.com/wp-content/uploads/2018/01/njpw-australia-696x392.jpg"
    self.thumb_image ||= "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/NJPW-Logo.png/200px-NJPW-Logo.png"
  end
end
