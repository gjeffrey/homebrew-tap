cask "earshot" do
  version "0.9.2,202609050000"
  sha256 "b9007360cd78213fdfd8c2adddc2caff72d6374ed20e5f20a8151d1fbb871fd4"

  url "https://www.gabrieljeffrey.com/earshot/Earshot.zip"
  name "Earshot"
  desc "Always-listening transcriber that keeps only what you ask it to"
  homepage "https://gabrieljeffrey.com/earshot/"

  livecheck do
    url "https://www.gabrieljeffrey.com/earshot/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Earshot.app"

  zap trash: [
    "~/Library/Application Support/Earshot",
    "~/Library/Caches/com.gabrieljeffrey.earshot",
    "~/Library/HTTPStorages/com.gabrieljeffrey.earshot",
    "~/Library/Preferences/com.gabrieljeffrey.earshot.plist",
    "~/Library/Saved Application State/com.gabrieljeffrey.earshot.savedState",
  ]
end
