cask "rororo" do
  version "0.2.2"
  sha256 "bf8e77b8b692c7b3c6499a086ac617150f0ad07ed653236ab505b2a3f38292f8"

  url "https://github.com/estevanhernandez-stack-ed/rororo-mac/releases/download/v#{version}/RORORO.dmg"
  name "RORORO"
  desc "Multi-instance Roblox launcher"
  homepage "https://github.com/estevanhernandez-stack-ed/rororo-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true # Sparkle handles in-app updates after install.
  depends_on macos: ">= :sonoma" # macOS 14+

  app "RORORO.app"

  zap trash: [
    "~/Applications/RORORO",
    "~/Library/Application Support/RORORO",
    "~/Library/Caches/com.626labs.rororo-mac",
    "~/Library/HTTPStorages/com.626labs.rororo-mac",
    "~/Library/HTTPStorages/com.626labs.rororo-mac.binarycookies",
    "~/Library/Preferences/com.626labs.rororo-mac.plist",
  ]
end
