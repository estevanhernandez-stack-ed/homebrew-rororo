cask "rororo" do
  version "0.8.0"
  sha256 "9e8565d2db3e092050187ea49ef2c941a295b0a449ae4e324190d85ee94f6d33"

  url "https://github.com/estevanhernandez-stack-ed/rororo-mac/releases/download/v#{version}/RORORO.pkg"
  name "RORORO"
  desc "Multi-instance Roblox launcher"
  homepage "https://github.com/estevanhernandez-stack-ed/rororo-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true # Sparkle handles in-app updates after install.
  depends_on macos: :sonoma # macOS 14+

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
