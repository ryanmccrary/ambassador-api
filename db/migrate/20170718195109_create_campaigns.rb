class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.integer   :user_id
      t.integer   :organization_id
      t.datetime  :end_date
      t.string    :name
      t.text      :description
      t.string    :header
      t.integer   :goal
      t.integer   :item_id

      t.timestamps
    end
  end
end
