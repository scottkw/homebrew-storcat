cask "storcat" do
  version "1.2.2"

  if Hardware::CPU.arm?
    sha256 "ca1fe1067f4e9843746ff5d03a3e6c35fb0247b863c0a9f57907d3cd9e80cf17"
    url "https://github.com/scottkw/storcat/releases/download/#{version}/StorCat-#{version}-arm64.dmg"
  else
    sha256 "51b54b1a5780fe38eea20c6911b2071931bfb09c98716805f88fefede1a0fa56"
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
