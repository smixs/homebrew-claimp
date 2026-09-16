cask "claimp" do
  version "0.3.4"
  sha256 "26bbc9ac93ce74af813a9190203b5d3e7b05ef697eca75080d82a360dc01cdaf"

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
