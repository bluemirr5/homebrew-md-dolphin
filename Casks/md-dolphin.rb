cask "md-dolphin" do
  version "0.2.4"
  sha256 "e3b72d7b92148f7a9df715992584a1f4a1f15f62b96f83b6501645edd0af3c6f"

  url "https://github.com/bluemirr5/md_dolphin/releases/download/v#{version}/md_dolphin-#{version}-mac-universal.dmg"
  name "MD Dolphin"
  desc "macOS markdown viewer"
  homepage "https://github.com/bluemirr5/md_dolphin"

  auto_updates false

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "MD Dolphin.app"

  zap trash: [
    "~/Library/Application Support/md_dolphin",
    "~/Library/Preferences/com.bluemirr5.md-dolphin.plist",
    "~/Library/Logs/md_dolphin",
  ]
end
