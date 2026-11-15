cask "peri-display" do
  version "0.2.0"
  sha256 "71d3813ca3ee445d29a417c518c92965e7ff8edebe54dbb4f29b1d3df63e135b"

  url "https://github.com/aground5/mac-android-continuity/releases/download/v#{version}/PeriDisplay-#{version}.zip"
  name "Peri Display"
  desc "Mac-to-Android display extension"
  homepage "https://github.com/aground5/mac-android-continuity"

  depends_on macos: :tahoe

  app "Peri Display.app"
end
