class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
