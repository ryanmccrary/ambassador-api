class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :state
      t.string  :zip
      t.string  :ein
      t.text    :description
      t.integer :defaultamount
      t.integer :owner_id


      t.timestamps
    end
  end
end
