cask "md-dolphin" do
  version "0.2.1"
  sha256 "7873e21cb97b4de29c0071312abb4b2699da1df54c8050df952e4da6f824367d"

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
