cask "claimp" do
  version "0.4.0"
  sha256 "f438915ba0fb6f6d326283a908d52934cb742c1a8882f301fa962fa29ac85cfb"

  url "https://github.com/smixs/claimp/releases/download/v#{version}/Claimp-#{version}.dmg"
  name "Claimp"
  desc "Waveform player for building DJ sets"
  homepage "https://claimp.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :golden_gate"

  app "Claimp.app"

  zap trash: [
    "~/Library/Application Support/Claimp",
    "~/Library/Caches/dev.shima.claimp",
    "~/Library/Preferences/dev.shima.claimp.plist",
  ]
end
