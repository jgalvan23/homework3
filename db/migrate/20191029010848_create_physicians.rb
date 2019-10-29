class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :specialty
      t.string :address
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
