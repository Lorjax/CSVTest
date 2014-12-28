class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :nummer

      t.timestamps
    end
  end
end
