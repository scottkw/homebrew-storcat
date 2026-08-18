cask "storcat" do
  version "3.0.0"
  sha256 "b1f2297390718004fedd8884e728203ef3e33f6243bc46a56f5898116a01fcf4"

  url "https://github.com/scottkw/storcat/releases/download/v#{version}/StorCat-v#{version}-darwin-universal.dmg"

  name "StorCat"
  desc "Directory Catalog Manager - Create, search, and browse directory catalogs"
  homepage "https://github.com/scottkw/storcat"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "StorCat.app"
  binary "#{appdir}/StorCat.app/Contents/MacOS/StorCat", target: "storcat"

  zap trash: [
    "~/Library/Application Support/StorCat",
    "~/Library/Preferences/com.kenscott.storcat.plist",
    "~/Library/Saved Application State/com.kenscott.storcat.savedState",
    "~/Library/Caches/com.kenscott.storcat",
  ]
end
