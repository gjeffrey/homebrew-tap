cask "lightbox" do
  version "1.0,202609052041"
  sha256 "248cd4bfc0449d7098a92551e807ef0b2154d3ebb9b402c336d5662c8c9fe47f"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Lightbox-1.0-202609052041.zip"
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
