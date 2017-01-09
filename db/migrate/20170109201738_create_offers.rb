class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.text :short_description
      t.text :about_us
      t.integer :located_at
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
