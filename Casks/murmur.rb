cask "murmur" do
  version "0.1.0,202609051518"
  sha256 "b77387b644783f8899a2302790fcb6416714f83cf6ed15d3514e49ac530cae1a"

  url "https://gabrieljeffrey.com/murmur/updates/Murmur-#{version.csv.second}.zip"
  name "Murmur"
  desc "Menu bar client for Syncthing"
  homepage "https://gabrieljeffrey.com/murmur"

  livecheck do
    url "https://gabrieljeffrey.com/murmur/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Murmur.app"

  # Deliberately NOT zapping "~/Library/Application Support/Syncthing": Murmur
  # adopts an existing Syncthing configuration when it finds one, so that
  # directory is frequently not ours to delete — removing it would destroy the
  # folder and device setup of anyone who ran Syncthing before installing this.
  zap trash: [
    "~/Library/Caches/com.gabrieljeffrey.murmur",
    "~/Library/HTTPStorages/com.gabrieljeffrey.murmur",
    "~/Library/Preferences/com.gabrieljeffrey.murmur.plist",
    "~/Library/Saved Application State/com.gabrieljeffrey.murmur.savedState",
  ]
end
