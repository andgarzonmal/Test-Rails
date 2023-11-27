class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :sex
      t.date :birthdate
      t.string :name
      t.string :surname
      t.string :email
      t.string :address
      t.string :home_apartment
      t.belongs_to :country, null: false, foreign_key: true
      t.belongs_to :department, null: false, foreign_key: true
      t.belongs_to :city, null: false, foreign_key: true
      t.timestamps
    end
  end
end
