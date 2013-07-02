class CreateArtistRelationships < ActiveRecord::Migration
  def change
    create_table :artist_relationships do |t|
      t.integer :artist_id
      t.integer :related_artist_id

      t.timestamps
    end
  end
end
