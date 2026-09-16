cask "claimp" do
  version "0.3.1"
  sha256 "21ad6e2e8db1b7ec6492739bade579feac40c7ecdcbb746801a0d399258d13c9"

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
