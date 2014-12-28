class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name
      t.string :hersteller
      t.string :mainboard
      t.string :cpu
      t.string :ram
      t.string :bios
      t.string :lan
      t.string :macadresse
      t.string :grafikkarte
      t.string :os
      t.references :room, index: true

      t.timestamps
    end
  end
end
