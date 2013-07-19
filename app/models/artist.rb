class Artist < ActiveRecord::Base
  attr_accessible :name, :artist_ids, :genre, :genre_id
  validates_presence_of :name
  validates_presence_of :genre
  
  has_many		:artist_related_artist_relationships, 
  				    :class_name 		=> "ArtistRelationship",
  				    :foreign_key		=> :related_artist_id

  has_many		:artists,
  				    :through			   => :artist_related_artist_relationships,
  				    :source				   => :artist

  has_many		:related_artist_artist_relationships,
  				    :class_name 		=>	"ArtistRelationship",
  				    :foreign_key		=> :artist_id

  has_many    :related_artists,
              :through        => :related_artist_artist_relationships,
              :source         => :related_artist

  belongs_to :genre
  belongs_to :user
end
