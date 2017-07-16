class CreateServers < ActiveRecord::Migration[5.1]
  def change
    create_table :servers do |t|
      t.string :name
      t.references :environment, foreign_key: true

      t.timestamps
    end
  end
end
