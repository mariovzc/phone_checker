class CreatePhoneContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :phone_contacts do |t|
      t.string :phoneNumber
      t.string :countryCode
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
