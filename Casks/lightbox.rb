cask "lightbox" do
  version "1.0,202609051928"
  sha256 "050d9c4f3f79f2fd7f5d6cf6a623af2dd2ebf9dc692420e7e4f96ac2be1cb0c6"

  url "https://www.gabrieljeffrey.com/lightbox/releases/Lightbox-1.0-202609051928.zip"
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
