cask "storcat" do
  version "1.2.3"
  sha256 "812bcf43ac85cdbe591baa297f0e36855320fb04304b36261cc48da53aa51908"

  url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-universal.dmg"
  
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
