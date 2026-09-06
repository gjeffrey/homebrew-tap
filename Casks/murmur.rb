cask "murmur" do
  version "0.1.0,202609061515"
  sha256 "0b6dbd086e8f55c94e858a1d92bb02a18aa74793f779c9d94ad968f3e65ae8e7"

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
