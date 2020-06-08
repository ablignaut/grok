class Category < ApplicationRecord
  has_and_belongs_to_many :tickets, :join_table => 'tickets_categories'
end
