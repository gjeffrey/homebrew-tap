cask "illigata" do
  version "1.0,202610121829"
  sha256 "31713de305df89771e172d99a0b70ddef0dcc10fe95e8235793c7f7e1efd6dd4"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Illigata-1.0-202610121829.zip"
  name "Illigata"
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

  app "Illigata.app"

  zap trash: [
    "~/Library/Application Support/Lightbox",
    "~/Library/Caches/com.gabrieljeffrey.illigata",
    "~/Library/Caches/com.gabrieljeffrey.lighttable",
    "~/Library/HTTPStorages/com.gabrieljeffrey.illigata",
    "~/Library/HTTPStorages/com.gabrieljeffrey.lighttable",
    "~/Library/Logs/Lightbox",
    "~/Library/Preferences/com.gabrieljeffrey.illigata.plist",
    "~/Library/Preferences/com.gabrieljeffrey.lighttable.plist",
    "~/Library/Saved Application State/com.gabrieljeffrey.illigata.savedState",
    "~/Library/Saved Application State/com.gabrieljeffrey.lighttable.savedState",
  ]
end
