cask "storcat" do
  version "1.2.2"
  
  if Hardware::CPU.arm?
    sha256 "1995ffb10bfa09887871f02f1e38b107381ca1f05d13adffb511b3eafbf1fc15"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-arm64.dmg"
  else
    sha256 "0227c3fecb153eec4ac2f3eb32f15a75ce9ea4841ab30971ff5d75bc0f392193"
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
