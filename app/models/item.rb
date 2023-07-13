class Item < ApplicationRecord
  validates_presence_of :description

  def self.partial_match(input = '')
    where('description like ?', "%#{input}%")
  end
end
