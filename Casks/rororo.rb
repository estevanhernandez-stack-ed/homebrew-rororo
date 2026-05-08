cask "rororo" do
  version "0.2.5"
  sha256 "c1b391fcb6291354cf1419ae9ff010d619ade26eddaab97d49f6744b5495a839"

  url "https://github.com/estevanhernandez-stack-ed/rororo-mac/releases/download/v#{version}/RORORO.pkg"
  name "RORORO"
  desc "Multi-instance Roblox launcher"
  homepage "https://github.com/estevanhernandez-stack-ed/rororo-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true # Sparkle handles in-app updates after install.
  depends_on macos: ">= :sonoma" # macOS 14+

  pkg "RORORO.pkg"

  uninstall pkgutil: "com.626labs.rororo-mac"

  zap trash: [
    "~/Applications/RORORO",
    "~/Library/Application Support/RORORO",
    "~/Library/Caches/com.626labs.rororo-mac",
    "~/Library/HTTPStorages/com.626labs.rororo-mac",
    "~/Library/HTTPStorages/com.626labs.rororo-mac.binarycookies",
    "~/Library/Preferences/com.626labs.rororo-mac.plist",
  ]
end
