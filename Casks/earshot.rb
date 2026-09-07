cask "earshot" do
  version "0.9.4,202609062029"
  sha256 "3e73ab7b8dd532533cef18eeb1e79fe3b485973b55b3674dd92ec7857cd9f124"

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
