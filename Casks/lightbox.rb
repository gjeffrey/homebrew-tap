cask "lightbox" do
  version "1.0,202609081444"
  sha256 "d23cfe2535047e0899c4e7f24aa2ffe6a2f27659649d9cc9e0f07d96d25fdf62"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Lightbox-1.0-202609081444.zip"
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
