class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.belongs_to :team
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
