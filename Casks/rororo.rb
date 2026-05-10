cask "rororo" do
  version "0.5.2"
  sha256 "43a2dce8b6cb37a71200e29c0fe5e859d77ee2d1a16c2bc72a3c10ffec807d08"

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
