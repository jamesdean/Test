class CreateSyncs < ActiveRecord::Migration
  def change
    create_table :syncs do |t|
      t.string :data

      t.timestamps
    end
  end
end
