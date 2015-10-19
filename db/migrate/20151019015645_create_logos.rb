class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :url
      t.text :description
      t.text :companyID
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
