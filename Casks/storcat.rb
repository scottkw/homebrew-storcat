cask "storcat" do
  version "2.2.1"
  sha256 "cedcadf7cc1f20a221127fa94c0578d96dad274e37a5a4998634adc3c223c290"

  url "https://github.com/scottkw/storcat/releases/download/v#{version}/StorCat-v#{version}-darwin-universal.dmg"

  name "StorCat"
  desc "Directory Catalog Manager - Create, search, and browse directory catalogs"
  homepage "https://github.com/scottkw/storcat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "StorCat.app"

  zap trash: [
    "~/Library/Application Support/StorCat",
    "~/Library/Preferences/com.kenscott.storcat.plist",
    "~/Library/Saved Application State/com.kenscott.storcat.savedState",
    "~/Library/Caches/com.kenscott.storcat",
  ]
end
