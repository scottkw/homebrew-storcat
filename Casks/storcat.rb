cask "storcat" do
  version "1.2.1"
  
  if Hardware::CPU.arm?
    sha256 "c1ebc127148f7a7c34000f1836552bb3c2da4eefd549f941a2982077c612698e"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-arm64.dmg"
  else
    sha256 "2fef0ba51696dfc570fd5c8520d9b99c3c7b3ce340e8527ce9c3cc60cb62af69"
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
