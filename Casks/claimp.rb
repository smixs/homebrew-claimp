cask "claimp" do
  version "0.4.3"
  sha256 "2605801f26692a7711f532f57239daab0f027986fa69ec18e46dddd83dbbca8f"

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
