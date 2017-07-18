class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.integer :campaign_id
      t.integer :amount
      t.string  :stripe_token

      t.timestamps
    end
  end
end
