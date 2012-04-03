class CreateSubmissions < ActiveRecord::Migration
  def self.up
    create_table :submissions do |t|
      t.string :company
      t.text :description
      t.boolean :hiring
      t.timestamps
    end
  end

  def self.down
    drop_table :submissions
  end
end
