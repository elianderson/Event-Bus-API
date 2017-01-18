class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.interger :organization_id
      t.string :message
      t.string :hostname
      t.datetime :timestamp

      t.timestamps
    end
  end
end
