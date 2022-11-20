class CreateInitiatives < ActiveRecord::Migration[7.0]
  def change
    create_table :initiatives do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.text :keywords
      t.string :location

      t.timestamps
    end
  end
end
