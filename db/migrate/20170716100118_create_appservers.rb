class CreateAppservers < ActiveRecord::Migration[5.1]
  def change
    create_table :appservers do |t|
      t.string :name
      t.references :server, foreign_key: true

      t.timestamps
    end
  end
end
