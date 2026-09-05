cask "lightbox" do
  version "1.0,202609051319"
  sha256 "2f2b526fe83767cc03d330b9d3d4ff8f740bb3e3eef370f18025ace51ff288dd"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Lightbox-1.0-202609051319.zip"
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
