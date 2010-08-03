class CreateTexts < ActiveRecord::Migration
  def self.up
    create_table :texts do |t|
      t.string :name
      t.string :isbn

      t.timestamps
    end
  end

  def self.down
    drop_table :texts
  end
end
