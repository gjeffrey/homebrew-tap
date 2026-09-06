cask "earshot" do
  version "0.9.3,202609061509"
  sha256 "fc76d300b0b4ded64ac709720a8e7c40789f6af7759bd6a55b9ca42ffb6a2c89"

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
