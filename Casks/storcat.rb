cask "storcat" do
  version "2.2.0"
  sha256 "204256a7986b40cb3b3e56348001db3d59b43f88ec1f2ca0a52cfcf922757e48"

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
