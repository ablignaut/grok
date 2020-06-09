class Category < ApplicationRecord
  has_and_belongs_to_many :tickets, :join_table => 'tickets_categories'
  belongs_to :product

  def path_args
    [self.product, self]
  end
end
