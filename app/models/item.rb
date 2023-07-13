class Item < ApplicationRecord
  validates_presence_of :description

  enum status: {
    completed: 0,
    'to do': 1,
    'in progress': 2
  }

  def self.partial_match(input = '')
    where('description like ?', "%#{input}%")
  end
end
