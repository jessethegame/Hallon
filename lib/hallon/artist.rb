module Hallon
  # Artists in Hallon are the people behind the songs. Methods
  # are defined for retrieving their names and loaded status.
  #
  # To retrieve more information about an artist, you can browse
  # it. This will give access to more detailed data such as bio,
  # portraits and more. Hallon does not support this as of yet,
  # but you can use the underlying Spotify API for this, just like
  # we have for {Album}s.
  #
  # Both Albums and Tracks can have more than one artist.
  class Artist < Base
    extend Linkable

    from_link :as_artist
    to_link   :from_album

    # Construct an artist given a link.
    #
    # @param [String, Link, FFI::Pointer] link
    def initialize(link)
      @pointer = Spotify::Pointer.new from_link(link), :artist, true
    end

    # Retrieve Artist name. Empty string if Artist is not loaded.
    #
    # @return [String]
    def name
      Spotify.artist_name(@pointer)
    end

    # True if the Artist is loaded.
    #
    # @return [Boolean]
    def loaded?
      Spotify.artist_is_loaded(@pointer)
    end
  end
end
