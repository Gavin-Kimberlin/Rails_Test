require 'rails_helper'

describe Song do
  it { should belong_to(:album) }
end

describe Album do
  it { should have_many(:songs) }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should have_and_belong_to_many :artists }
  it { should have_many(:artists).through(:album_artists) }
  it("has many songs") do
    album = Album.create(name: "album")
    song1 = Song.create(name: "song1", album_id: album.id)
    song2 = Song.create(name: "song2", album_id: album.id)
    expect(album.songs()).to(eq([song1, song2]))
  end
  it { should validate_presence_of :name }
end
