class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist==nil then nil else artist.name end
  end

  def artist_name=(name)
    self.artist=Artist.find_or_create_by(name: name)
  end
end
