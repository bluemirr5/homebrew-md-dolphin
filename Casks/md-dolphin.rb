cask "md-dolphin" do
  version "0.2.2"
  sha256 "e714deb55d1621f8fe779ad5a96e48ff98d95c50e9cae01898c6b98102e39e3f"

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
