# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hallon}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kim Burgestrand"]
  s.date = %q{2010-10-08}
  s.description = %q{# What’s this?
This is [Ruby](http://www.ruby-lang.org/en/) bindings for the official Spotify API. What this means is that you can use Ruby to interact with Spotify.

Hallon is inspired by [Greenstripes](http://github.com/sarnesjo/greenstripes), a similar library by [Jesper Särnesjö](http://jesper.sarnesjo.org/).

# How do I use it?
There are [installation instructions in the GitHub wiki for Hallon](http://wiki.github.com/Burgestrand/Hallon/installation-instructions). Once the installation is complete you can write code like this:

    # initiate connection
    session = Hallon::Session.instance IO.read('spotify_appkey.key')
    session.login username, password
    
    # fetch the playlist container
    playlists = session.playlists
    
    # add a new playlist to the container
    summer = playlists.add "Summer 2010"
    
    # Add awesome song by Thin Lizzy to beginning of playlist
    track = Hallon:Link.new("spotify:track:4yJmwG2C1SDgcBbV50xI91").to_obj
    summer.insert 0, track

    # logout
    session.logout

## This is awesome! I want to help!
Sweet! You contribute in more than one way!

### Write code!
[Fork Hallon](http://github.com/Burgestrand/Hallon/fork), [write tests for everything](http://rspec.info/) you do (so I don’t break anything you did during my own development) and send a pull request. You can see a list of functions that I have — and have not — used in Hallon in the [coverage document](http://github.com/Burgestrand/Hallon/blob/master/COVERAGE.markdown).

If you modify existing files, please adhere to the coding standard surrounding your piece of code!

### [Send me feedback and requests](http://github.com/Burgestrand/Hallon/issues)
Really, I ❤ feedback! Suggestions on how to improve the API, tell me what is delicious about Hallon, tell me what is yucky about Hallon… anything! All feedback is useful in one way or another.

You can reach me either through [Hallons issue tracker](http://github.com/Burgestrand/Hallon/issues), [GitHub messaging system](http://github.com/inbox/new/Burgestrand) or you can find [my e-mail listed on my GitHub profile](http://github.com/Burgestrand).

## What’s the catch?
There are several!

### Hallon is unstable
I’ve never developed anything in C before, and I’ve been using Ruby for about a month. With that said, Hallon should be considered experimental.

### Hallon only supports one session per process
You can only keep one session with Spotify alive at a time in the same process, due to a limitation of `libspotify`.

### Hallon is licensed under GNU AGPL
Hallon is licensed under the [GNU AGPL](http://www.gnu.org/licenses/agpl-3.0.html), which is a very viral license. In summary, anything that is using Hallon in any way must also be open sourced (and source must be available for its’ users) under the GNU AGPL. I will most likely change the license to the X11 license or something similar in the future. This license can always be lifted and if you talk to me personally we could work something out. :)}
  s.email = %q{kim@burgestrand.se}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = [
    "ext/hallon.c"
  ]
  s.files = [
    "lib/hallon.rb"
  ]
  s.homepage = %q{http://github.com/Burgestrand/Hallon}
  s.licenses = ["GNU AGPL"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Delicious Ruby bindings for libspotify}
  s.test_files = [
    "spec/config.rb",
     "spec/hallon_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
  end
end

