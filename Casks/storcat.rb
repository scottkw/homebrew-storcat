cask "storcat" do
  version "1.1.2"
  
  if Hardware::CPU.arm?
    sha256 "📥 Downloading: https://github.com/scottkw/storcat/releases/download/1.1.2/StorCat-1.1.2-arm64.dmg
aeaf923e6028b36fcad00462d872727f1528b7041abb910ca59dd939295289d3"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-arm64.dmg"
  else
    sha256 "📥 Downloading: https://github.com/scottkw/storcat/releases/download/1.1.2/StorCat-1.1.2.dmg
7d01ec5f562901a9cc4824db7ce5284a8a034a1ed8af4659cac50fa2ede2d1c5"
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
