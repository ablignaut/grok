class Ticket < ApplicationRecord
  has_and_belongs_to_many :categories, :join_table => 'tickets_categories'
end
