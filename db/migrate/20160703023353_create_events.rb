class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :location
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
