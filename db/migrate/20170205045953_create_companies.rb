class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.text :name
      t.boolean :active

      t.timestamps
    end
  end
end
