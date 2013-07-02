class ArtistRelationship < ActiveRecord::Base
  attr_accessible :artist_id, :related_artist_id

  belongs_to :artist, :class_name => "Artist"
  belongs_to :related_artist, :class_name => "Artist"
end
