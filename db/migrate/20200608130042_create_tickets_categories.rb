class CreateTicketsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets_categories do |t|
      t.references :ticket, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
