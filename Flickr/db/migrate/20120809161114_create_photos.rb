class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :machine_tags
      t.string :per_page

      t.timestamps
    end
  end
end
