cask "storcat" do
  version "1.2.0"
  
  if Hardware::CPU.arm?
    sha256 "📥 Downloading: https://github.com/scottkw/storcat/releases/download/1.2.0/StorCat-1.2.0-arm64.dmg
6f9fda6a3420f93d1dfa6a276a4aed2ddb9ebb08fe823dfa76d172a5d84dde80"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-arm64.dmg"
  else
    sha256 "📥 Downloading: https://github.com/scottkw/storcat/releases/download/1.2.0/StorCat-1.2.0.dmg
7e3bb6962a3e45007f6ef6c76b7d232f2bd41ec3559eb4d9993ecd335e2c826d"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}.dmg"
  end
  
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
