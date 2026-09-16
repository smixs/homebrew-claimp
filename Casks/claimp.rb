cask "claimp" do
  version "0.3.3"
  sha256 "bc50c3693537dad06d94bd27ecb67f730e992e4b3938ee50efa0b9c458619ee1"

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
