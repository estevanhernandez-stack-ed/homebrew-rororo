cask "rororo" do
  version "0.8.2"
  sha256 "2398311f1c375c01e9aafb19d5807dcb8e2d2b0553b54c80cb49832baa29bb87"

  url "https://github.com/estevanhernandez-stack-ed/rororo-mac/releases/download/v#{version}/RORORO.pkg"
  name "RORORO"
  desc "Multi-instance Roblox launcher"
  homepage "https://626labs.dev/rororo.html#get"

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
