class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street
      t.integer :zip
      t.string :city
      t.string :state
      t.integer :phone
      t.text :description
      t.string :service

      t.timestamps null: false
    end
  end
end
