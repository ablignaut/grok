class TicketsCategory < ApplicationRecord
  belongs_to :ticket
  belongs_to :category
end
