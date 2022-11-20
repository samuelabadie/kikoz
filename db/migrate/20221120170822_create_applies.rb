class CreateApplies < ActiveRecord::Migration[7.0]
  def change
    create_table :applies do |t|
      t.references :initiative, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :accepted_at
      t.datetime :denied_at

      t.timestamps
    end
  end
end
