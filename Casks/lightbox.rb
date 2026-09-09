cask "lightbox" do
  version "1.0,202609081846"
  sha256 "ff2b356ca4858b7ce1ab00f291d9f99ae74655dfb529ea9cb60775476af51dcb"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Lightbox-1.0-202609081846.zip"
  name "Lightbox"
  desc "Media browser for photographers — open a folder, see everything"
  homepage "https://gabrieljeffrey.com/lightbox/"

  livecheck do
    url "https://www.gabrieljeffrey.com/lightbox/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Lightbox.app"

  zap trash: [
    "~/Library/Application Support/Lightbox",
    "~/Library/Caches/com.gabrieljeffrey.lighttable",
    "~/Library/HTTPStorages/com.gabrieljeffrey.lighttable",
    "~/Library/Logs/Lightbox",
    "~/Library/Preferences/com.gabrieljeffrey.lighttable.plist",
    "~/Library/Saved Application State/com.gabrieljeffrey.lighttable.savedState",
  ]
end
